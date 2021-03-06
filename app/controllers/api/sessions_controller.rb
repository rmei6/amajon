class Api::SessionsController < ApplicationController
    def create
        @user = User.find_by_credentials( params[:user][:email], params[:user][:password])
        if @user
            login(@user)
            render 'api/users/show'
        else
            render json: ['Your email or password is incorrect'], status: 401
        end
    end
    
    def destroy
        if logged_in?
            logout!
            render json: {}
        else
            head 404
            # render json: { error: 'Not Logged In', status: 404 }, status: 404
        end
    end
end
