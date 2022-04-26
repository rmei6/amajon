class Api::ProductsController < ApplicationController
    # def create
    #     @product = Product.new(product_params)
    #     if @product.save
    #         render :show
    #     else
    #         render json: @product.errors.full_messages, status: 422
    #     end
    # end
    def index
        @products = Product.all
        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
        if @product
            render :show
        else
            render json: ['Product does not exist'], status: 404
        end
    end

    private

    def product_params
        params.require(:product).permit(:name,:description,:department_id,:price)
    end
end
