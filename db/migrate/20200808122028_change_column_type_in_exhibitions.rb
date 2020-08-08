class ChangeColumnTypeInExhibitions < ActiveRecord::Migration[6.0]
  def change
    change_column :exhibitions, :start_date, :date, using: 'start_date::date'
    change_column :exhibitions, :end_date, :date, using: 'end_date::date'
  end
  
end
