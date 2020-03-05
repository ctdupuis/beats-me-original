class Artist < ApplicationRecord
    has_many :songs, through: :albums
    has_many :albums
    has_many :genres, through: :albums

    validates :name, presence: true
    
end
