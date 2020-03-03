class SongsController < ApplicationController
    before_action :set_song, only: [:edit, :update, :show]

    def new
        @song = Song.new
    end

    def create
    end

    def show
    end

    def index
        @songs = Song.all
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def song_params
        params.require(:song).permit(:title, :length, :genre_id, :artist_id, :playlist_id, :album_id)
    end

    def set_song
        @song = Song.find(params[:id])
    end
end
