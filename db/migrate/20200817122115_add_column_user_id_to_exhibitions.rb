class AddColumnUserIdToExhibitions < ActiveRecord::Migration[6.0]
  def change
    add_reference :exhibitions, :user, null: false, foreign_key: true
  end
end
