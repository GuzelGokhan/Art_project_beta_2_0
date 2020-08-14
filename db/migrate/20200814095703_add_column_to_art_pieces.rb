class AddColumnToArtPieces < ActiveRecord::Migration[6.0]
  def change
    add_reference :art_pieces, :exhibition, null: false, foreign_key: true
  end
end
