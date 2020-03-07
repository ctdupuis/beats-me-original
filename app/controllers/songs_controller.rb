class SongsController < ApplicationController
    before_action :set_song, only: [:edit, :update, :show, :destroy]
    

    def new
        album = Album.find(params[:album_id])
        # byebug
        # @song = Song.new(album_name: album.name, artist_name: album.artist_name)
        @song = album.songs.build(album_id: album.id, artist_id: album.artist.id)
        # byebug
    end

    def create
        # byebug
        album = Album.find_or_create_by(name: song_params[:album_name])
        @song = album.songs.build(song_params)
        # if @song.save
        #     redirect_to album_songs_path(@song.album, @song)
        # else
        #     render :new
        # end
    end

    def add
        album = Album.find(params[:id])
        @song = album.songs.build(song_params)
        album.add_song(@song)
        # byebug
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
        # byebug
    end

    def update
        byebug
        @song.update(song_params)
    end

    def destroy
        @song.destroy 
        redirect_to albums_path
    end

    private

    def song_params
        params.require(:song).permit(:title, :length, :artist_name, :album_name, :album_id)
    end

    def set_song
        @song = Song.find(params[:id])
    end
end
