class ExhibitionsController < ApplicationController

  before_action :set_galery, only: :new

  def new
    @exhibition = Exhibition.new
  end
  

  def create
    @exhibition = Exhibition.new(params_exhibition)
    @exhibition.galery = @galery
    raise
    if @exhibition.save
      flash[:success] = "Exhibition successfully created"
      redirect_to @exhibition
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
   @showroom = Showroom.new
  end
  
  
  private 

  def set_galery
    @galery = Galery.find(params[:galery_id])
  end

  def params_exhibition
    params.require(:exhibition).permit(:name, :start_date, :end_date, :galery_id)
  end
end
