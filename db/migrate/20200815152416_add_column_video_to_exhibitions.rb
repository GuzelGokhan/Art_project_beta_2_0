class AddColumnVideoToExhibitions < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibitions, :video, :string
  end
end
