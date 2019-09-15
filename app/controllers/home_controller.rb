class HomeController < ApplicationController
  def index
    @soils = Soil.all
  end
end
