class Game < ApplicationRecord
    validates :title, :price, :description, :sale, :platform, :operating_system, :developer, :publisher, presence: true

    has_many_attached :screenshots
end