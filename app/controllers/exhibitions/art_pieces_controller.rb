class Exhibitions::ArtPiecesController < ApplicationController
    before_action :set_exhibition
  def index
    @art_pieces = @exhibition.art_pieces
  end
  
  def new
    @art_piece = ArtPiece.new
  end

  def create
    @art_piece = ArtPiece.new(params_art_piece)
    @art_piece.exhibition = @exhibition
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
    params.require(:art_piece).permit(:name,:photo, :description , :dimension ,:exhibition_id).merge(user: current_user)
  end

  def set_exhibition
    @exhibition = Exhibition.find(params[:exhibition_id])
  end

end
