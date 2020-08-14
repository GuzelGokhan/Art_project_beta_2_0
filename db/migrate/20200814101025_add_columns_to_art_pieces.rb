class AddColumnsToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :art_pieces, :description, :string
    add_column :art_pieces, :dimension, :string
  end
end
