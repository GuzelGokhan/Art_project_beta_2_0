class Exhibitions::ShowroomsController < ApplicationController
  before_action :set_exhibition
  
  def new
    @showroom = Showroom.new
  end
  
  def create
    @showroom = Showroom.new(params_showroom)
    @showroom.exhibition = @exhibition
    if @showroom.save
      flash[:success] = "Showroom successfully created"
      render(template: 'showrooms/show')
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private 

  def set_exhibition
    @exhibition = Exhibition.find(params[:exhibition_id])
  end

  def params_showroom
    params.require(:showroom).permit(:name,:exhibition_id, :photo)
  end
  
end
