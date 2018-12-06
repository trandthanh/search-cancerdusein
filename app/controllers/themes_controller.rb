class ThemesController < ApplicationController
  def show
    @themes = Theme.all
    @theme = Theme.find_by_title(params[:title])

    @livre_formatted_links = Link.where(format: "livre").joins(:themes).where(themes: { title: @theme.title })
    @article_formatted_links = Link.where(format: "article").joins(:categories).joins(:themes).where(themes: { title: @theme.title })
    @information_formatted_links = Link.where(format: "information").joins(:categories).joins(:themes).where(themes: { title: @theme.title })
    @association_formatted_links = Link.where(format: "association").joins(:themes).where(themes: { title: @theme.title })
    @guide_formatted_links = Link.where(format: "guide").joins(:themes).where(themes: { title: @theme.title })

    @keywords = Keyword.all

    @ressources = Link.joins(:themes).where(themes: { title: "ressources" })

    @format = %w(livre pdf article blog association guide)
  end
end
