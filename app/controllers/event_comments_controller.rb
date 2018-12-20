class EventCommentsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    @event_comment = current_user.event_comments.new(event_comment_params)
    @event_comment.event_id = event.id
    if @event_comment.save
    avg_star = Event.find(comment.event_id)
    average = event.event_comments.average(:star)
    avg_star.update(avg_star: average)
    redirect_to event_path(event.id)
  else
    @event = Event.find(params[:event_id])
    render :template => "events/show"
  end

    # イベントコメントがセーブされたら、イベントの中のAVG＿SATRからむをアップテーとする記述

  end

  def destroy
  end


  private
    def event_comment_params
    params.require(:event_comment).permit(:user_id,:event_id,:comment,:star)
  end
end