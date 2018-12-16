class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @artist_comment = ArtistComment.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    artist = Artist.new(artist_params)
    artist.user_id = current_user.id
    artist.save
    redirect_to mains_path
  end

  def destroy
        artist = Artist.find(params[:id])
        artist.destroy
        redirect_to mains_path
  end

  def update
        artist = Artist.find(params[:id])
        artist.update(artist_params)
        redirect_to artist_path(artist.id)

  end


  private
  def artist_params
        params.require(:artist).permit(:artist_name, :introduction,:image,:url)
  end
end