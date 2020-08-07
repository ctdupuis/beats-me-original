class Album < ApplicationRecord
    has_many :songs
    belongs_to :genre
    belongs_to :artist
    belongs_to :user
    scope :user_owns, ->(user_id) { where("user_id = ?", user_id) }

    validates :name, presence: true
    validates :artist_name, presence: true
    validates :songs, presence: true

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

    def total_runtime
        mins = []
        secs = []
        self.songs.map do |song|
            mins << song.runtime.split(':')[0].to_i
            secs << song.runtime.split(':')[1].to_i
        end
        total_minutes_as_secs = mins.reduce(:+) * 60
        total_seconds = secs.reduce(:+)
        grand_total_seconds = total_minutes_as_secs + total_seconds
        runtime = (grand_total_seconds / 60).round
        if runtime > 60
            hours = runtime / 60
            minutes = runtime % 60
            return "#{hours} hr #{minutes} min"
        else
            return "#{runtime} min"
        end
    end

    def self.filter(genre_id)
        if genre_id
            self.where("genre_id = ?", genre_id)
        elsif genre_id.blank? || genre_id.nil?
            Album.all
        else
            Album.all
        end
    end

end
