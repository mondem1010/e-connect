class EventFavoritesController < ApplicationController
        def create
            event_comment = EventComment.find(params[:event_comment_id])
            event_favorite = current_user.event_favorites.new(event_comment_id: event_comment.id)
            event_favorite.save
            redirect_to mains_path
        end
        def destroy
            event_comment = EventComment.find(params[:event_comment_id])
            event_favorite = current_user.event_favorites.new(event_comment_id: event_comment.id)
            event_favorite.destroy
            redirect_to mains_path
        end
end
