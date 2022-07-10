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
    reviewed = []
    user.reviews.each do |review|
        reviewed.push(review.product_id)
    end
    json.reviewed reviewed
else
    json.reviewed([])
end