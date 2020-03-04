class AlbumsController < ApplicationController
    before_action :set_album, only: [:edit, :update, :show]
    
    def new
        @album = Album.new
    end

    def create
    end

    def index
    end

    def show
    end

    def edit
    end
    
    def update
    end

    def destroy
    end

    private

    def album_params
        params.require(:album).permit(:name, :artist_name, :genre_id)
    end

    def set_album
        @album = Album.find(params[:id])
    end


end