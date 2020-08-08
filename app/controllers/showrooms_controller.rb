class ShowroomsController < ApplicationController
  before_action :set_exhibition, only: :create

  def index
    @showrooms = Showroom.all
  end
  
  def new
    @showroom = Showroom.new
  end

  def edit
    raise
  end
  
  
  def create
    @showroom = Showroom.new(params_showroom)
    @showroom.exhibition = @exhibition
    if @showroom.save
      flash[:success] = "Showroom successfully created"
      redirect_to @showroom
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private 

  def params_showroom
    params.require(:showroom).permit(:name,:photo)
  end

  def set_exhibition
    @exhibition = Exhibition.find(params[:exhibition_id])
  end
  
end
