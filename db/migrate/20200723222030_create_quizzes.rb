class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :memo
      t.date :accurual_date
      t.boolean :playable

      t.timestamps
    end
  end
end
