class PowersController < ApplicationController
  before_action :set_power, only: [:show]
  def index
    @powers = Power.all
  end

  def show
    
  end
  
  private 

  def set_power
    @power = Power.find(params[:id])
  end 
end
