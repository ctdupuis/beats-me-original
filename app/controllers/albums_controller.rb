class AlbumsController < ApplicationController
    before_action :set_album, only: [:edit, :update, :show, :destroy]
    before_action :require_logged_in, only: [:new, :create, :edit, :update, :destroy]
    
    def new
        @album = Album.new
    end

    def create 
        @album = Album.create(album_params)
        @album.user_id = current_user.id
        if @album.save
            redirect_to album_path(@album)
        else
            render :new 
        end
    end

    def index
        if params["commit"] == "Clear Filter"
            @albums = Album.all
        else
            @albums = Album.filter(params["genre"])
        end
    end

    def show
        @user = User.find(@album.user_id)
    end

    def edit
    end
    
    def update
        @album.artist.name = params[:album][:artist_name]   
        @album.update(album_params)
        redirect_to album_path(@album)
    end

    def destroy
        @album.destroy
        redirect_to albums_path
    end

    private

    def album_params
        params.require(:album).permit(:name, :artist_name, :img_url, :genre_id, :user_id, songs_attributes: [:title, :runtime, :artist_name])
    end

    def set_album
        @album = Album.find(params[:id])
    end

end