class ApplicationController < ActionController::Base
  before_action :set_search
  before_action :configure_permitted_parameters, if: :devise_controller?

def set_search
  #@search = Article.search(params[:q])
  @search = Artist.ransack(params[:q]) #ransackメソッド推奨
  @search_articles = @search.result
end


protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end

