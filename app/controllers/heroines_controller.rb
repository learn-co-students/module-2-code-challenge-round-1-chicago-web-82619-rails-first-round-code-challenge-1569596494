class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show]
  
  def index
    @powers = Power.all
    @heroines = Heroine.all
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
      redirect_to @heroine
    else
      render 'new'
    end
  end
  
  def search
    p = Power.find_by(name: params[:q])
     
    @results = Heroine.all.select {|heroine| heroine.power.id == p.id }

  end

  private 

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
  
  
end
