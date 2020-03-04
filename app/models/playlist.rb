class Playlist < ApplicationRecord
    has_many :songs
    has_many :artists, through: :songs
    has_many :genres, through: :songs
    has_many :albums, through: :songs
    belongs_to :user

    validates :name, presence: true
end
