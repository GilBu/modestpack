class CartItem < ApplicationRecord
  validates :game_id, presence: true

  belongs_to :game,
  foreign_key: :game_id,
  class_name: :Game

  belongs_to :customer,
  foreign_key: :customer_id,
  class_name: :User
end
