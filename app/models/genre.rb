class Genre < ApplicationRecord
    has_many :songs
    has_many :albums
    has_many :artists, through: :songs
end
