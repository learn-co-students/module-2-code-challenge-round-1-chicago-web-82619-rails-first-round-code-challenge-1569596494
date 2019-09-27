class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.search(params[:search])
  end

  def show
    @heroine = Heroine.find_by(id: params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
        redirect_to @heroine
      else
        flash[:errors] = @heroine.errors.full_messages
        redirect_to new_heroine_path
    end  
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end
