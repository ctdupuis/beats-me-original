class SongsController < ApplicationController
    before_action :set_song, only: [:edit, :update, :show, :destroy]
    

    def new
        @song = Song.new
    end

    def create
        # byebug
        album = Album.find_or_create_by(name: song_params[:album_name])
        @song = album.songs.build(song_params)
        if @song.save
            redirect_to song_path(@song)
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
        params.require(:song).permit(:title, :length, :artist_name, :album_name)
    end

    def set_song
        @song = Song.find(params[:id])
    end
end
