class CreateShowrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :showrooms do |t|
      t.references :exhibition, null: false, foreign_key: true
      t.string :name
      t.string :photo

      t.timestamps
    end
  end
end
