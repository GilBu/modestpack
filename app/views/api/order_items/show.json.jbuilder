json.set! @order_item.id do
    json.partial! "api/games/game", game: @order_item.game
    json.extract! @order_item, :orderer_id, :order_item_id, :id
    json.created_at @order_item.created_at.strftime(" %b %d, %Y")
end