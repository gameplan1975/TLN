class Renamecolumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :accurual_date, :accrual_date
  end
end
