class HomeController < ApplicationController
  def index
	@cats = Cat.all
	@foods = Food.all
  end
end
