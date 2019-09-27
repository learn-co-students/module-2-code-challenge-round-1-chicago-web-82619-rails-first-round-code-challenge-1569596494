class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find_by(id: params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    heroine = Heroine.new(heroine_params)
    if heroine.save
      flash[:message] = "New Heroine Created"
      redirect_to heroine_path(heroine)
    else
      flash[:message] = heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end


  private

  def heroine_params
    params.require(:heroine).permit(:super_name,:name,:power_id)
  end
end
