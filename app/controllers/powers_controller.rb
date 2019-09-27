class PowersController < ApplicationController
  before_action :find_power, only: [:show]

  def index
    @powers = Power.all
  end

  def show
  end

  private
  # Finds a heroine based on id.
  def find_power
    @power = Power.find(params[:id])
  end
end
