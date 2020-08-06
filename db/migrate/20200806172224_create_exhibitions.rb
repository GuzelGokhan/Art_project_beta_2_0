class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.references :galery, null: false, foreign_key: true
      t.string :name
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
