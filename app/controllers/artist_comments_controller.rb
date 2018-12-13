class ArtistCommentsController < ApplicationController
  def create
  	artist = Artist.find(params[:artist_id])
    comment = current_user.artist_comments.new(artist_comment_params)
    comment.artist_id = artist.id
    comment.save
    redirect_to mains_path
  end

  def destroy
  end

  private
  def artist_comment_params
    params.require(:artist_comment).permit(:user_id,
                      :artist_id,
                      :content)
  end
end