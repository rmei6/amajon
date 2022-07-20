json.extract! user, :id, :name, :email

if user.items.length != 0 
    json.cart user.item_ids
    count = 0
    user.carts.each do |cart| 
        count += cart.quantity
    end
    json.cartCount count
else
    json.cart([])
    json.cartCount 0
end

if user.reviews.length != 0
    reviewed_products = []
    review_ids = []
    user.reviews.each do |review|
        reviewed_products.push(review.product_id)
        review_ids.push(review.id)
    end
    json.reviewed_products reviewed_products
    json.review_ids review_ids
else
    json.reviewed_products([])
    json.review_ids([])
end