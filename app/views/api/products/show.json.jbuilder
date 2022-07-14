json.extract! @product, :id, :name, :description, :department, :delivery_days, :price, :review, :review_num
json.photoUrl url_for(@product.photo)

json.set! 'reviews' do 
  @product.reviews.each do |review|
    json.set! review.user_id do
      json.extract! review, :id, :user_name, :user_id, :product_id, :headline, :body, :stars
    end
  end
end