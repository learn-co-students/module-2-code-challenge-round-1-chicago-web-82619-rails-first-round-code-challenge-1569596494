class PowersController < ApplicationController
  before_action :find_power, only: [:show, :edit, :update, :destroy]
  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)

    if @power.valid?
      @power.save
      redirect_to power_path(@power)
    else
      flash[:errors] = @power.errors.full_messages
      redirect_to new_power_path
    end
  end

  def edit

  end

  def update
    @power.update(power_params)

    if @power.valid?
      @power.save
      redirect_to power_path(@power)
    else
      flash[:errors] = @power.errors.full_messages
      redirect_to new_power_path
    end
  end

  def destroy
  end

  private

  def find_power
    @power = Power.find_by(id:params[:id])
  end

  def power_params
    params.require(:power).permit([:name, :description])
  end
end
