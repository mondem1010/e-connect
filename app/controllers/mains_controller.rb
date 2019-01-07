class MainsController < ApplicationController
  def index
  	@events = Event.all.order(id: "DESC").limit(4)
  	@artists = Artist.all.order(id: "DESC").limit(4)
  	@eventss = Event.order(avg_star: "DESC").limit(4)
  	@artistss = Artist.order(average_star: "DESC").limit(4)
  	@search = Artist.ransack(params[:q]) #ransackメソッド推奨
  	@search_artists = @search.result.page(params[:page])


  end
end
