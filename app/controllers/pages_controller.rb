class PagesController < ApplicationController
  def home
    # @search = Link.search(params.fetch(:query, "*"))
    @search = Link.search params[:query], operator: "or"
  end

  def search
    # @search = Link.search(params.fetch(:query, "*"))
    @search = Link.search params[:query], operator: "or"
  end
end
