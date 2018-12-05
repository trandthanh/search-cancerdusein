class ApplicationController < ActionController::Base
  before_action :theme_redirection

private
 def theme_redirection
    redirect_to theme_path(params[:query]) if %w(s'informer gerer vivre ressources recherche).include?(params[:query])
    redirect_to theme_path("gerer") if params[:query] == "gérer"
 end
end
