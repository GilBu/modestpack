@cart_items.each do |cart_item|
  json.set! cart_item.id do
    json.extract! cart_item, :id, :game_id, :customer_id
  end
end