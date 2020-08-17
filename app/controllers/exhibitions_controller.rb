class ExhibitionsController < ApplicationController

  before_action :set_exhibition
skip_before_action :authenticate_user!, only: [ :show, :video ]
  def show
    @showroom = Showroom.new
  end

  def video
  end

  def destroy
    if @exhibition.destroy
      flash[:success] = 'Exhibition was successfully deleted.'
      redirect_to galery_path(@exhibition.galery)
    else
      flash[:error] = 'Something went wrong'
      redirect_to exhibitions_url
    end

  end
  
  def edit
   
  end

  def update
    
      if @exhibition.update_attributes(params_exhibition)
        flash[:success] = "Exhibition was successfully updated"
        redirect_to @exhibition
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  
  private 

  def set_exhibition
    @exhibition = Exhibition.find(params[:id])
  end

  def params_exhibition
    params.require(:exhibition).permit(:name, :start_date, :end_date, :artist, :video, :photo)
  end
end
