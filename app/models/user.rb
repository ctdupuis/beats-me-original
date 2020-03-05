class User < ApplicationRecord
    has_secure_password
    has_many :playlists

    validates :username, uniqueness: true, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
    validates :first_name, presence: true, format: {without: /[0-9]/, message: "Numbers are not allowed in this field"}
    validates :last_name, presence: true, format: {without: /[0-9]/, message: "Numbers are not allowed in this field"}
    validates :password, length: {minimum: 6}

    def display_name
        self.first_name + self.last_name 
    end
    
end
