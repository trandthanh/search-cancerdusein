class ApplicationController < ActionController::Base
  def search
    @navbar_search = Link.search(params.fetch(:q, "*"))
  end
end
