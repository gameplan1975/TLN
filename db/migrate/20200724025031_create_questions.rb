class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :name
      t.string :memo
      t.boolean :playable
      t.date :accurual_date

      t.timestamps
    end
  end
end
