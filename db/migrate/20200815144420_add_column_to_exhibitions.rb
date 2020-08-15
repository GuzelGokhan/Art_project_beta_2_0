class AddColumnToExhibitions < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibitions, :artist, :string
  end
end
