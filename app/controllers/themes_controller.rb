class ThemesController < ApplicationController
  def show
    @themes = Theme.all
    @theme = Theme.find(params[:id])
  end
end
