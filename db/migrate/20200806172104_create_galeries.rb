class CreateGaleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galeries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :latitude
      t.string :longtitude
      t.string :photos

      t.timestamps
    end
  end
end
