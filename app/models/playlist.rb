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
end
