json.set! 'review' do
  json.extract! @review, :id, :user_name, :user_id, :product_id, :headline, :body, :stars
end
json.set! 'product' do
  json.extract! @review.product, :id, :name, :description, :department, :delivery_days, :price, :review, :review_num
  json.photoUrl url_for(@review.product.photo)
end