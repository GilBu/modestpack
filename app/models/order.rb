class Order < ApplicationRecord
  validates :game_id, :price, :user_order_id, presence: true

  belongs_to :user_order, inverse_of: :orders
end
