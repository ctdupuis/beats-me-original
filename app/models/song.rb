class Song < ApplicationRecord
    # include ActiveModel::Validator
    # validates_with LengthValidator
    belongs_to :artist
    belongs_to :album

    validates :title, presence: true
    validates :length, presence: true
    # validate :length_in_time
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

    # def length_in_time(record)
    #     err_msg = "Must be in standardized time format. Example => 6:09"
    #     if !record.length.include?(":")
    #         record.errors[:length] << err_msg
    #     else
    #         mins = record.length.split(":")[0]
    #         secs = record.length.split(":")[1]
    #         split_sec - secs.split("").map{|s| s.to_i}
    #         unless mins.match(/[0-9]/) && split_sec[0].between?(0, 5) && split_sec[1].between?(0, 9)
    #             record.errors[:length] << err_msg
    #         end
    #     end
    # end
end
