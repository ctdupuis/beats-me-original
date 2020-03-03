class User < ApplicationRecord
    has_secure_password
    has_many :playlists

    validates :username, uniqueness: true
    validates :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :first_name, format: {without: /[0-9]/, message: "Numbers are not allowed in this field"}
    validates :last_name, format: {without: /[0-9]/, message: "Numbers are not allowed in this field"}
    validates :password, length: {minimum: 6}
end
