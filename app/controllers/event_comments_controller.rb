class EventCommentsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    comment = current_user.event_comments.new(event_comment_params)
    comment.event_id = event.id
    comment.save
    redirect_to mains_path

  end

  def destroy
  end


  private
    def event_comment_params
    params.require(:event_comment).permit(:user_id,
                      :event_id,
                      :comment)
  end
end