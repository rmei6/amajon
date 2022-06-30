json.extract! @product, :id, :name, :description, :department, :delivery_days, :price, :review
json.photoUrl url_for(@product.photo)