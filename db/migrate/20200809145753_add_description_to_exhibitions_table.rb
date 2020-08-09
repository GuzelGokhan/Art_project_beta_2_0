class AddDescriptionToExhibitionsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibitions, :description, :text 
  end
end
