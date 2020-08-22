class ShowroomsController < ApplicationController
  before_action :set_showroom, only: [:show,:destroy, :edit, :update]

  def index
    @showrooms = Showroom.all
  end
  
  def show
    
  end

  def edit
  
  end
  
def update
    if @showroom.update_attributes(params_showroom)
      flash[:success] = "Showroom was successfully updated"
      redirect_to @showroom
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
end

  
  
  def destroy
    if @showroom.destroy
      flash[:success] = 'showroom was successfully deleted.'
      redirect_to exhibition_path(@showroom.exhibition)
    else
      flash[:error] = 'Something went wrong'
      redirect_to showrooms_url
    end

  end
  
  private 

  def set_showroom
    @showroom = Showroom.find(params[:id])
  end

  def params_showroom
    params.require(:showroom).permit(:name, :background)
  end
end
