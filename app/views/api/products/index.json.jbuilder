@products.each do |product|
    json.set! product.id do 
        json.extract! product, :id, :name, :description, :department, :delivery_days, :price, :review
        json.photoUrl url_for(product.photo)
    end
end
if @cart then
    @cart.each do |cart|
        json.set! "cart" + cart.id.to_s do 
            json.extract! cart, :id, :user_id, :product_id, :quantity
        end
    end
end