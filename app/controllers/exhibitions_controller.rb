class ExhibitionsController < ApplicationController

  before_action :set_exhibition, only: [:new, :show]

  def new
    @exhibition = Exhibition.new
  end
  

  def create
    @exhibition = Exhibition.new(params_exhibition)
    @exhibition.galery = @galery
    if @exhibition.save
      flash[:success] = "Exhibition successfully created"
      redirect_to @exhibition
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
   
  end
  
  
  private 

  def set_exhibition
    @exhibition = Exhibition.find(params[:id])
  end

  def params_exhibition
    params.require(:exhibition).permit(:name, :start_date, :end_date, :galery_id)
  end
end
