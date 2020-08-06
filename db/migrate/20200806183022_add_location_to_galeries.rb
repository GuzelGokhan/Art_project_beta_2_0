class AddLocationToGaleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galeries, :location, :string
  end
end
