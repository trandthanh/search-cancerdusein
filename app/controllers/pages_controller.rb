class PagesController < ApplicationController
  def home
    # @search = Link.search(params.fetch(:query, "*"))
    @link_search = Link.search params[:query], operator: "or"
    @theme_search = Theme.search params[:query], operator: "or"
    @themes = Theme.all
  end

  def search
    # @search = Link.search(params.fetch(:query, "*"))
    @link_search = Link.search params[:query], operator: "or"
    @theme_search = Theme.search params[:query], operator: "or"
    @themes = Theme.all

    @navbar_search = Link.search(params.fetch(:q, "*"))

    @links = Link.all

    @links_theme = Theme.where(title: params[:q]).or(Theme.where(title: params[:query]))
    @link_search_q = Link.search params[:q], operator: "or"
  end

  def monhistoire
  end
end
