class RemoveColumnPhotosFromGaleries < ActiveRecord::Migration[6.0]
  def change
    remove_column :galeries, :photos
  end
end
