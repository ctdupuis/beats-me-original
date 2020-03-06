module AlbumsHelper

    def new_or_edit?(f, album)
        if !album.id
            render partial: 'song_fields', locals: { f: f, album: album }
        end
    end

    def check_ownership(album)
        current_user.id == album.id
    end
end