class Game < ApplicationRecord
    validates :title, :price, :description, :sale, :platform, :operating_system, :developer, :publisher, presence: true

    has_many :cart_items,
    foreign_key: :game_id,
    class_name: :CartItem

    has_one :customer, 
    through: :cart_items,
    source: :customer

    has_many :order_items,
    foreign_key: :order_item_id,
    class_name: :OrderItem

    has_many :orderers,
    through: :order_items,
    source: :orderer

    has_many_attached :screenshots
end