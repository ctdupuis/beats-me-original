class Album < ApplicationRecord
    has_many :songs
    belongs_to :genre
    belongs_to :artist

    # validates :name, presence: true
    # validates :artist_id, presence: true 
    # validates :genre_id, presence: true
    # # validates :songs, presence: true
end
