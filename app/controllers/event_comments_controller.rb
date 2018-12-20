class EventCommentsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    comment = current_user.event_comments.new(event_comment_params)
    comment.event_id = event.id
    comment.save
    avg_star = Event.find(comment.event_id)
    average = event.event_comments.average(:star)
    avg_star.update(avg_star: average)
    redirect_to event_path(event.id)

    # イベントコメントがセーブされたら、イベントの中のAVG＿SATRからむをアップテーとする記述

  end

  def destroy
  end


  private
    def event_comment_params
    params.require(:event_comment).permit(:user_id,:event_id,:comment,:star)
  end
end