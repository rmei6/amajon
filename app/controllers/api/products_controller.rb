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
        department_paths = ['beauty','food-and-groceries','kitchen','clothing-shoes-and-jewelry','garden','toys-and-games','traditional','health','art']
        # debugger;
        if params[:department] == nil 
            @products = Product.all
        elsif(department_paths.include?(params[:department]))
            # debugger;
            @products = Product.select(:id,:name,:description,:department,:delivery_days,:price).where(department: params[:department])
        else
            redirect_to '/'
        end
        render :index
    end

    def show
        @product = Product.find_by(id: params[:id])
        # debugger;
        if @product
            render :show
        else
            # debugger;
            # @products = Product.all
            render json: ['Product does not exist'], status: 404
            # render :index
            # redirect_to :action => 'index'
        end
    end

    private

    def product_params
        params.require(:product).permit(:name,:description,:department_id,:delivery_days,:price)
    end
end
