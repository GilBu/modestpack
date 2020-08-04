
json.user do
  json.extract!( @user, :id)
end

json.cart do
  json.array! @user.shopping_cart_items do |shopping_cart_item|
    json.partial! "api/shopping_cart_item", shopping_cart_item: shopping_cart_item
  end
end