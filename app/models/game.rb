class Game < ApplicationRecord
    validates :title, :price, :description, :sale, :platform, :operating_system, :developer, :publisher, presence: true

    has_many_attached :screenshots

    has_many :shopping_cart_items, inverse_of: :game, dependent: :destroy
    has_many :users, through: :shopping_cart_items, source: :user
end