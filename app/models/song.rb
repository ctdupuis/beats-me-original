class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :album
    has_and_belongs_to_many :playlists

    validates :title, presence: true
    validates :runtime, presence: true, runtime: true

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
