class ArtistFavoritesController < ApplicationController
        def create
            @artist_comment = ArtistComment.find(params[:artist_comment_id])
            @artist_favorite = ArtistFavorite.create(user_id: current_user.id,artist_comment_id: params[:artist_comment_id])
            @artist_favorites = ArtistFavorite.where(artist_comment_id: params[:artist_comment_id])
            @artist_comments = ArtistComment.all
        end
        def destroy
            @artist_comment = ArtistComment.find(params[:artist_comment_id])
            artist_favorite = ArtistFavorite.find_by(user_id: current_user.id,artist_comment_id: params[:artist_comment_id])
            artist_favorite.destroy
            @artist_favorites = ArtistFavorite.where(artist_comment_id: params[:artist_comment_id])
            @artist_comments = ArtistComment.all

        end
end
