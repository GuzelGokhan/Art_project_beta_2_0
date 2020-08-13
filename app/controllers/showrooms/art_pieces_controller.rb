class Showrooms::ArtPiecesController < ApplicationController
  before_action :set_showroom
  def new
    @art_piece = ArtPiece.new
  end

  def create
    @art_piece = ArtPiece.new(params_art_piece)
    @art_piece.showroom = @showroom
    if @art_piece.save
      flash[:success] = "Object successfully created"
      redirect_to @art_piece
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  private

  def params_art_piece
    params.require(:art_piece).permit(:name,:photo, :showroom_id).merge(user: current_user)
  end

  def set_showroom
    @showroom = Showroom.find(params[:showroom_id])
  end

  
  
end
