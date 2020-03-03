class Playlist < ApplicationRecord
    has_many :songs
    belongs_to :user
end
