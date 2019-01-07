class EventsController < ApplicationController
  PER = 3
  def new
    @event = Event.new

  end

  def index
    @events = Event.all.page(params[:page]).per(PER)
    @event_comments = EventComment.all

  end

  def show
    @event = Event.find(params[:id])
    @event_comment = EventComment.new
    @Event_comments = EventComment.page(params[:page]).reverse_order
    # @event_favorite = EventFavorite.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
      if @event.save
      redirect_to mains_path
      else
      render "events/new"
      end
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
        params.require(:event).permit(:email, :name, :place,:event_name, :introduction,:date, :image,:performer,:page)
    end
end