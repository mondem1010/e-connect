class MainsController < ApplicationController
  def index
  	@events = Event.order('updated_at DESC').limit(4)
  	@artists = Artist.all.order(id: "DESC")
  end
end
