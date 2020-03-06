class User < ApplicationRecord
    has_secure_password
    has_many :playlists
    has_many :albums

    validates :username, uniqueness: true, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
    # validates :first_name, presence: true, format: {without: /[0-9]/, message: "Numbers are not allowed in this field"}
    # validates :last_name, presence: true, format: {without: /[0-9]/, message: "Numbers are not allowed in this field"}
    validates :password, length: {minimum: 6}

    def self.find_or_create_by_omniauth(auth_hash)
        self.where(email: auth_hash['info']['email']).first_or_create do |user|
            user.username = auth_hash['uid']
            user.password = SecureRandom.hex
        end
    end
end
