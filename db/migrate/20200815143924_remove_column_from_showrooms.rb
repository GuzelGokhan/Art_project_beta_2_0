class RemoveColumnFromShowrooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :showrooms, :photo, :string
  end
end
