class Album < ApplicationRecord
    has_many :songs
    belongs_to :genre
    belongs_to :artist
    # accepts_nested_attributes_for :songs

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

    def songs_attributes=(attributes_hash)
        # byebug
        attributes_hash.each do |k, value|
            # byebug
            song = Song.new(value)
            song.artist_id = self.artist_id
            song.save
            self.songs << song unless song.title.blank?
        end
    end

end
