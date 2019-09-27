class HeroinesController < ApplicationController
  def index
    if params[:search]
      if params[:search] == "all"
        @heroines = Heroine.all
      else
        @search = Power.find_by(name: params[:search])
        @heroines = Heroine.all.select{|heroine| heroine.power == @search}
      end
    else
      @heroines = Heroine.all
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    
    if @heroine.save
      redirect_to @heroine
    else
      flash[:error] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end

  end

  private

  def heroine_params
    params.require(:heroine).permit(:power_id, :name, :super_name)
  end

end
