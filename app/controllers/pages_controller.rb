class PagesController < ApplicationController

  def home
    # @search = Link.search(params.fetch(:query, "*"))
    @format = ["livre", "pdf", "article", "blog", "association"].sort
    @links = Link.all

    @link_search = Link.search params[:query], fields: [ :keywords ], where: {format: params[:format]}

    @themes = Theme.all

    @keywords = Keyword.all
  end

  def search
    # @search = Link.search(params.fetch(:query, "*"))
    # @link_search = Link.search params[:query], fields: [ :keywords ]
    @link_search = Link.search params[:query], fields: [ :keywords ], where: {format: params[:format]}

    @themes = Theme.all

    @links = Link.all
    @links_theme = Theme.where(title: params[:query])

    @format = ["livre", "pdf", "article", "blog", "association"].sort

    @keywords = Keyword.all
  end

  def monprojet
    @themes = Theme.all
    @format = ["livre", "pdf", "article", "blog", "association"].sort
    @keywords = Keyword.all
  end
end


