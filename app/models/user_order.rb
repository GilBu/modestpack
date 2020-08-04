class UserOrder < ApplicationRecord
  validates :user_id, :purchase_total, presence: true

  belongs_to :user, inverse_of: :user_orders
  has_many :orders, inverse_of: :user_order

  def save_order_manifest(shopping_cart_items)
    shopping_cart_items.each do |item|
      orders.create!(
        game_id: item.game.id,
        price: item.game.price
        )
    end
  end
end
