class ApplicationController < ActionController::Base
 
  before_action :configure_permitted_parameters, if: :devise_controller?

before_action :set_search

def set_search
  #@search = Article.search(params[:q])
  @search = Artist.ransack(params[:q]) #ransackメソッド推奨
  @search_artists = @search.result.page(params[:page])
end

def after_sign_out_path_for(resource)
	mains_path
end

protected
  def configure_permitted_parameters
  	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:handle_name,:birthday,:prefecture,:hobby,:gender])
  end
end

