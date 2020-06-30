class Game < ApplicationRecord
    validates :title, :price, :description, :sale, :platform, :operating_system, :developer, :publisher, presence: true


end