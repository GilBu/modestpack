class ShoppingCartItem < ApplicationRecord
  validates :user_id, :game_id, presence: true

  belongs_to :user, inverse_of: :shopping_cart_items
  belongs_to :game, inverse_of: :shopping_cart_items
end
