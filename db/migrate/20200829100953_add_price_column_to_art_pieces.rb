class AddPriceColumnToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :art_pieces, :price, :integer
  end
end
