class User < ApplicationRecord
    has_secure_password
    has_many :playlists

    validates :username, uniqueness: true
    validates :email, uniqueness: true
end
