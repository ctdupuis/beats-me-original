class Album < ApplicationRecord
    has_many :songs
    belongs_to :genre
    belongs_to :artist
    belongs_to :user

    validates :name, presence: true

    def artist_name 
        self.artist ? self.artist.name : nil
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by(name: name)
    end

    def songs_attributes=(attributes_hash)
        attributes_hash.each do |k, value|
            song = Song.new(value)
            song.artist_id = self.artist_id
            song.save
            self.songs << song unless song.title.blank?
        end
    end

    def add_song(song)
        song.artist_id = self.artist_id
        song.save
        self.songs << song 
    end

end
