class EventsController < ApplicationController
  def new
    @event = Event.new

  end

  def index
    @events = Event.all
    @event_comments = EventComment.all

  end

  def show
    @event = Event.find(params[:id])
    @event_comment = EventComment.new
    
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    event = Event.new(event_params)
    event.user_id = current_user.id
    event.save
    redirect_to mains_path
  end

  def destroy
        event = Event.find(params[:id])
        event.destroy
        redirect_to mains_path
  end

  def update
        event = Event.find(params[:id])
        event.user_id = current_user.id
        event.update(event_params)
        redirect_to event_path(event.id)

  end

    private
    def event_params
        params.require(:event).permit(:email, :name, :place,:event_name, :introduction,:date, :image)
    end
end