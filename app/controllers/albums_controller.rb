class AlbumsController < ApplicationController
    before_action :set_album, only: [:edit, :update, :show]
    
    def new
        @album = Album.new
        6.times { @album.songs.build }
    end

    def create
        artist = Artist.find_or_create_by(name: album_params[:artist_name])
        @album = artist.albums.create(album_params)
        byebug
        if @album.save
            redirect_to album_path(@album)
        else
            render :new 
        end
    end

    def index
        @albums = Album.all
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
        params.require(:album).permit(:name, :artist_name, :genre_id, songs_attributes: [:title, :length])
    end

    def set_album
        @album = Album.find(params[:id])
    end


end