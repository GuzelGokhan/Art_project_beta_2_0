class AddDescriptionToExhibitionsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :exhibition, :description, :text
  end
end
