class Album < ApplicationRecord
    has_many :songs
    belongs_to :genre
    belongs_to :artist
end
