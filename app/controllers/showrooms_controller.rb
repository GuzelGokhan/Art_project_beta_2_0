class ShowroomsController < ApplicationController

  before_action :set_showroom, only: [:destroy, :show]
skip_before_action :authenticate_user!, only: [ :index ,:show]
  def index
    @showrooms = Showroom.all
  end
  
  def show
    @art_piece = ArtPiece.new
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
end
