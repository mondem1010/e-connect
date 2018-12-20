class MainsController < ApplicationController
  def index
  	@events = Event.order('updated_at DESC').limit(4)
  	@artists = Artist.all.order(id: "DESC")
  	@eventss = Event.order(avg_star: "DESC")
  	@artistss = Artist.order(average_star: "DESC")

  end
end
