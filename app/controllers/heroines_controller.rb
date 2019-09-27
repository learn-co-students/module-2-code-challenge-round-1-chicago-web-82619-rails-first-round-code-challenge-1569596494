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

  private
    # Finds a heroine based on id.
    def find_heroine
      @heroine = Heroine.find(params[:id])
    end

    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power_id)
    end
end
