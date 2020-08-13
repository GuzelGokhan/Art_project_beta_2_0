class RemoveLocationFromArtPieces < ActiveRecord::Migration[6.0]
  def change
    remove_column :art_pieces, :location
    remove_column :art_pieces, :photos
  end
end
