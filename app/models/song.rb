class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre
    belongs_to :playlist
    belongs_to :album

    validates :title, presence: true
    validates :length, presence: true
    validates :artist_id, presence: true
    validates :genre_id, presence: true

    # def artist 
    #     self.artist
    # end

    # def artist=(name)
    #     artist = Artist.find_or_create_by(name: name)
    #     self.artist = artist 
    # end
end
