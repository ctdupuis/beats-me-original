class SongsController < ApplicationController
    before_action :set_song, only: [:edit, :update, :show]

    def new
        @song = Song.new
    end

    def create
        # byebug
        @song = Song.create(song_params)
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
    end

    def update
    end

    def destroy
    end

    private

    def song_params
        params.require(:song).permit(:title, :length, :genre_id, :artist_name, :album_name)
    end

    def set_song
        @song = Song.find(params[:id])
    end
end
