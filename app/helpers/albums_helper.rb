module AlbumsHelper

    def new_or_edit?(f, album)
        if !album.id
                render partial: 'song_fields', locals: { f: f, album: album }
        end
    end

end