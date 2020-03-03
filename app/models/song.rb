class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre
    belongs_to :playlist
    belongs_to :album
end
