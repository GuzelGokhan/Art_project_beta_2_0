class RemoveColumnFromArtPieces < ActiveRecord::Migration[6.0]
  def change
    remove_reference :art_pieces, :showroom, null: false, foreign_key: true
  end
end
