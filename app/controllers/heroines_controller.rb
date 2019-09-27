class HeroinesController < ApplicationController
  before_action :find_heroine, only:[:show, :edit, :update, :destroy]

  def index
    if params[:power_name]
      @power = Power.find_by(name: params[:power_name])
      @heroines = Heroine.all.select do |heroine|
        heroine.power == @power
      end
      @heroines
      # raise @heroines.inspect
    else
      @heroines = Heroine.all
    end
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def edit
  end

  def update
    @heroine.update(heroine_params)

    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash[:errors] = @power.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def destroy
  end

  private

  def find_heroine
    @heroine = Heroine.find_by(id:params[:id])
  end

  def heroine_params
    params.require(:heroine).permit([:name, :super_name, :power_id])
  end
end
