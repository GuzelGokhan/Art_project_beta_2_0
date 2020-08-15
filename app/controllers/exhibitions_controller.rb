class ExhibitionsController < ApplicationController

  before_action :set_exhibition, only: [:destroy, :show, :video]

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
  
  private 

  def set_exhibition
    @exhibition = Exhibition.find(params[:id])
  end
end
