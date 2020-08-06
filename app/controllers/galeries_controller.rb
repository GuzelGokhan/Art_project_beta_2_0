class GaleriesController < ApplicationController
  before_action :set_galery, only: [:show]
  def index
    @galeries = Galery.all
  end
  
  def new
    @galery = Galery.new
  end

  def create
    @galery = Galery.new(params_galery)
    if @galery.save
      flash[:success] = "Galery successfully created"
      redirect_to @galery
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @exhibition = Exhibition.new
  end

  private

  def set_galery
    @galery = Galery.find(params[:id])
  end

  def params_galery
    params.require(:galery).permit(:name,:location).merge(user: current_user)
  end
  
end
