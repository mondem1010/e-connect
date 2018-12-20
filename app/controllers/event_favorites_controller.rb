class EventFavoritesController < ApplicationController
        def create
            @event_comment = EventComment.find(params[:event_comment_id])
            @event_favorite = EventFavorite.create(user_id: current_user.id,event_comment_id: params[:event_comment_id])
            @event_favorites = EventFavorite.where(event_comment_id: params[:event_comment_id])
            @event_comments = EventComment.all
        end
        
        def destroy
            @event_comment = EventComment.find(params[:event_comment_id])
            event_favorite = EventFavorite.find_by(user_id: current_user.id,event_comment_id: params[:event_comment_id])
            event_favorite.destroy
            @event_favorites = EventFavorite.where(event_comment_id: params[:event_comment_id])
            @event_comments = EventComment.all
            redirect_to event_path(@event_comment.event)

        end
end
