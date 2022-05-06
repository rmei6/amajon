class Api::CartsController < ApplicationController
    def create
        @item = current_user.carts.create(cart_params)
        @user = current_user
        if @item.save
            render json: @item
        else
            render json: @cart.errors.full_messages, status: 422
        end
    end

    def index
        if logged_in?
            @cart = current_user.carts
            @products = current_user.items
            render 'api/products/index'
        else
            render json: ['Must have account to access cart'], status: 422
        end
    end

    def update
        # debugger;
        cart = current_user.carts
        @user = current_user
        @item = cart.where(product_id: params[:cart][:product_id])

        if(params[:cart][:quantity].to_i === 0)
            destroy(@item[0])
        else
            new_quantity = params[:cart][:quantity].to_i + @item[0].quantity
            if(new_quantity === 0)
                destroy(@item[0])
            else
                @item.update(quantity: new_quantity)
                render "api/users/show"
            end
        end
    end

    def destroy(item)
        if(item.destroy)
            render "api/users/show"
        end
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id,:product_id,:quantity)
    end
end
