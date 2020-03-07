module SongsHelper

    def pick_form_url(song)
        if !song.id
            add_song_path(song.album)
        else
            album_song_path(song.album, song)
        end
    end

end
