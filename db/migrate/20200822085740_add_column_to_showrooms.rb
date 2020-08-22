class AddColumnToShowrooms < ActiveRecord::Migration[6.0]
  def change
    add_column :showrooms, :background, :string
  end
end
