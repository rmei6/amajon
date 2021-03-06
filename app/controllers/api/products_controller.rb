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
            @products = Product.select(:id,:name,:description,:department,:delivery_days,:price,:review,:review_num).where(department: params[:department])
        else
            redirect_to '/'
            # return Redirect("http://localhost:3000/#/");
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

    def update
        @product = Product.find_by(id: params[:id])
        reviews = @product.reviews
        review_num = reviews.length
        avg_review = 0;
        if review_num != 0
            review_sum = 0;
            reviews.each do |item|
                review_sum += item.stars
            end
            avg_review = review_sum / review_num.to_f
        end
        @product.update(review: avg_review,review_num: review_num)
        render :show
    end

    private

    def product_params
        params.require(:product).permit(:name,:description,:department_id,:delivery_days,:price,:review,:review_num)
    end
end
