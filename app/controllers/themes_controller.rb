class ThemesController < ApplicationController
  def show
    @themes = Theme.all
    @theme = Theme.find(params[:id])

    @livre_formatted_links = Link.where(format: "livre").joins(:categories).joins(:themes).where(themes: { title: @theme.title })
    @article_formatted_links = Link.where(format: "article").joins(:categories).joins(:themes).where(themes: { title: @theme.title })
    @information_formatted_links = Link.where(format: "information").joins(:categories).joins(:themes).where(themes: { title: @theme.title })
  end
end
