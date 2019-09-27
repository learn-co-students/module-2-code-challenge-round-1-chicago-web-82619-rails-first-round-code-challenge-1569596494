class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find_by(id: params[:id])
  end

end
