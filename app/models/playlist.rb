class Playlist < ApplicationRecord
    has_and_belongs_to_many :songs
    belongs_to :user

    validates :name, presence: true

    def add_songs(song_ids)
        song_ids.each do |id|
            song = Song.find(id)
            self.songs << song
        end
    end

    def total_runtime
        mins = []
        secs = []
        self.songs.map do |song|
            mins << song.runtime.split(':')[0].to_i
            secs << song.runtime.split(':')[1].to_i
        end
        total_minutes_as_seconds = mins.inject{|sum, el| sum + (el * 60) }
        total_seconds = secs.inject{|sum, el| sum + el }
        grand_total_seconds = total_minutes_as_seconds + total_seconds
        runtime = grand_total_seconds / 60
        if runtime > 60
            hours = runtime / 60
            minutes = runtime % 60
            return "#{hours} hr #{minutes} min"
        else
            return "#{runtime} min"
        end
    end
end
