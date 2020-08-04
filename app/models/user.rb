class User < ApplicationRecord

    attr_reader :password

    validates :username,:password_digest, :session_token, presence: true
    validates :username, uniqueness: true
    validates :password, length: { minimum: 8 }, allow_nil: true

    after_initialize :ensure_session_token

    has_many :shopping_cart_items, inverse_of: :user, dependent: :destroy
    has_many :games, through: :shopping_cart_items, source: :game

    has_many :user_orders, inverse_of: :user
    has_many :orders, through: :user_orders, source: :orders

    def self.find_by_creadentials(username, password)
        user = User.find_by(username: username)
        return nil unless user
        user.is_password?(password) ? user : nil
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom.base64(64)
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom.base64(64)
    end
end

def update_shopping_cart(items)
    items.each do |item|
      game = shopping_cart_items.find_by_game_id(item["game_id"])
      if game
        game.update(quantity: item["quantity"])
      else
        shopping_cart_items.create!(
          game_id: item["game_id"],
          quantity: item["quantity"]
          )
      end
    end
  end

  def update_anon_cart(items)
    temporary_shopping_cart(filter_duplicates(items))
  end

  def filter_duplicates(items)
    items.reduce({}) do |accum, item|
      if !accum[item["game_id"]] || accum[item["game_id"]] < item["quantity"]
        accum[item["game_id"]] = item["quantity"]
      end
      accum
    end
  end

  def temporary_shopping_cart(unique_cart_items)
    unique_cart_items.each do |game_id, quantity|
      shopping_cart_items.new(game_id: game_id, quantity: quantity).game.images.load
    end
    shopping_cart_items
  end