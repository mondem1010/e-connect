class CheckController < ApplicationController
  def index

  @search = Artist.search(params[:q])

  end
end
