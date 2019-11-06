class StaticPagesController < ApplicationController
  def home; end

  def cat
	@cats = Cat.page(params[:page]).per Settings.per_page_item
  end

  def food
	@foods = Food.page(params[:page]).per Settings.per_page_item
  end

end
