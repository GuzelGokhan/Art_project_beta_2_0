class RemoveColumnFromGaleries < ActiveRecord::Migration[6.0]
  def change
    remove_column :galeries, :latitude, :string
    remove_column :galeries, :longtitude, :string
  end
end
