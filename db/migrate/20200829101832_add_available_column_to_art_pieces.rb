class AddAvailableColumnToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_column :art_pieces, :available, :boolean
  end
end
