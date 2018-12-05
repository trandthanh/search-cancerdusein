class PagesController < ApplicationController

  def home
    # @search = Link.search(params.fetch(:query, "*"))
    @format = ["article", "livre", "ressource"]
    @links = Link.all

    @link_search = Link.search params[:query], fields: [ :format, :keywords ], where: {format: params[:format]}

    @themes = Theme.all


  end

  def search
    # @search = Link.search(params.fetch(:query, "*"))
    # @link_search = Link.search params[:query], fields: [ :keywords ]
    @link_search = Link.search params[:query], fields: [ :format, :keywords ], where: {format: params[:format]}

    @themes = Theme.all

    @links = Link.all
    @links_theme = Theme.where(title: params[:query])

    @format = ["article", "livre", "ressource"]
  end

  def monprojet
    @themes = Theme.all
  end
end


