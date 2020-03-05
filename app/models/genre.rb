class Genre < ApplicationRecord
    has_many :songs, through: :albums
    has_many :albums
    has_many :artists, through: :albums
end
