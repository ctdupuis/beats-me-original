class Album < ApplicationRecord
    has_many :songs
    belongs_to :genre
    belongs_to :artist

    # validates :name, presence: true
    # validates :artist_id, presence: true 
    # validates :genre_id, presence: true
    # # validates :songs, presence: true

    def artist_name 
        self.artist ? self.artist.name : nil
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by(name: name)
    end
end
