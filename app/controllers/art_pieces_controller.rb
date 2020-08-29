class ArtPiecesController < ApplicationController
  before_action :set_art_piece, onyl: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :show ]
  def show
    
  end
  
  def edit
  end

  def destroy
    if @art_piece.destroy
      flash[:success] = 'ArtPiece was successfully deleted.'
      redirect_to galeries_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to art_pieces_url
    end
  end
  

  def update
      if @art_piece.update_attributes(params_art_piece)
        flash[:success] = "ArtPiece was successfully updated"
        redirect_to @art_piece
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end

  private  

  def params_art_piece
    params.require(:art_piece).permit(:name,:description,:dimension, :price,:photo, :available)
  end

  def set_art_piece
    @art_piece = ArtPiece.find(params[:id])
  end
  
  
end
