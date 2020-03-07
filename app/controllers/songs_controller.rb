class SongsController < ApplicationController
    before_action :set_song, only: [:edit, :update, :show, :destroy]
    

    def new
        album = Album.find(params[:album_id])
        @song = album.songs.build(album_id: album.id, artist_id: album.artist.id)
    end

    def create
        album = Album.find_or_create_by(name: song_params[:album_name])
        @song = album.songs.build(song_params)
    end

    def add
        album = Album.find(params[:id])
        @song = album.songs.build(song_params)
        album.add_song(@song)
        if album.songs.include?(@song)
            redirect_to album_path(@song.album)
        else
            render :new
        end
    end

    def show
    end

    def index
        @songs = Song.all
    end

    def edit
    end

    def update
        @song.update(song_params)
        redirect_to album_path(@song.album)
    end

    def destroy
        @song.destroy 
        redirect_to album_path(@song.album)
    end

    private

    def song_params
        params.require(:song).permit(:title, :length, :artist_name, :album_name, :album_id)
    end

    def set_song
        @song = Song.find(params[:id])
    end
end
