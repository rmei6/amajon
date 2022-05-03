@products.each do |product|
    json.set! product.id do 
        json.extract! product, :id, :name, :description, :department, :delivery_days, :price
        json.photoUrl url_for(product.photo)
    end
end