class Api::DepartmentsController < ApplicationController
    def show
        @department = Department.find_by(id: params[:id])
        var all_products = Product.all.to_a
        @products = []
        all_products.map(product => {
            if(product.id === @department.id){
                @products.push(product)
            }
        }
        render '/api/products/index'
    end

    private
    
    def department_params
        params.require(:department).permit(:name)
    end
end
