class CreateArtPieces < ActiveRecord::Migration[6.0]
  def change
    create_table :art_pieces do |t|
      t.references :showroom, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :photos
      t.string :location

      t.timestamps
    end
  end
end
