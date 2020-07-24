class AddUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :game, :integer
    add_column :users, :correct, :integer
    add_column :users, :favorite_category, :string
    add_column :users, :total_time, :time
    add_column :users, :comment, :string
    add_column :users, :image, :string
  end
end
