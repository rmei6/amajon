class User < ApplicationRecord
    validates :name, :email, :password_digest, :session_token, presence: true
    validates :email, :session_token, uniqueness: true
    validates :password, length: { minimum: 6, allow_nil: true }

    attr_reader :password
    after_initialize :ensure_session_token!

    has_many :carts
    has_many :reviews
    has_many :items,
        through: :carts,
        source: :product

    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        return nil if user.nil?
        # debugger;
        user.is_password?(password) ? user : nil
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def self.generate_session_token
        SecureRandom.urlsafe_base64
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def reset_session_token!
        self.session_token = self.class.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token!
        self.session_token ||= self.class.generate_session_token
    end
end
