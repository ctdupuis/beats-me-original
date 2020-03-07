class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :album

    validates :title, presence: true
    # validates :length, presence: true
    # validates :artist_id, presence: true
    # validates :genre_id, presence: true

    def artist_name 
        self.artist ? self.artist.name : nil
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by(name: name)
    end

    def album_name 
        self.album ? self.album.name : nil 
    end

    def album_name=(name)
        self.album = Album.find_or_create_by(name: name)
    end
end
