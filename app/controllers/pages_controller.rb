class PagesController < ApplicationController
  def home
    # @search = Link.search(params.fetch(:query, "*"))
    @link_search = Link.search params[:query], operator: "or"
    @theme_search = Theme.search params[:query], operator: "or"
  end

  def search
    # @search = Link.search(params.fetch(:query, "*"))
    @link_search = Link.search params[:query], operator: "or"
    @theme_search = Theme.search params[:query], operator: "or"
  end
end
