class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to @heroine
  end

  def search
    if params[:power] == ''
      redirect_to heroines_path
    else
      @power = Power.find_by(name: params[:power])
      @heroines = Heroine.where(power_id: @power.id)
      render :index
    end
  end

  private
    # Finds a heroine based on id.
    def find_heroine
      @heroine = Heroine.find(params[:id])
    end

    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power_id)
    end
end
