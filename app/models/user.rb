class User < ApplicationRecord

    attr_reader :password

    validates :username,:password_digest, :session_token, presence: true
    validates :username, uniqueness: true
    validates :password, length: { minimum: 8 }, allow_nil: true

    has_many :games,
    through: :cart_items,
    source: :game

    has_many :order_items,
    foreign_key: :orderer_id,
    class_name: :OrderItem

    has_many :ordered_games,
    through: :order_items,
    source: :game

    has_many :cart_items,
    foreign_key: :customer_id,
    class_name: :CartItem

    after_initialize :ensure_session_token

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
