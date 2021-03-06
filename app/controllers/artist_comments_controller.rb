class ArtistCommentsController < ApplicationController
  def create
  	artist = Artist.find(params[:artist_id])
    @artist_comment = current_user.artist_comments.new(artist_comment_params)
    @artist_comment.artist_id = artist.id
    if @artist_comment.save
      avg_star = Artist.find(@artist_comment.artist_id)
      average = artist.artist_comments.average(:star)
      avg_star.update(average_star: average)
      redirect_to artist_path(artist.id)
    else
      @artist = Artist.find(params[:artist_id])
      render :template => "artists/show"
    end
  end

  def destroy
  end

  private
  def artist_comment_params
    params.require(:artist_comment).permit(:user_id,:artist_id,:content,:star)
  end
end