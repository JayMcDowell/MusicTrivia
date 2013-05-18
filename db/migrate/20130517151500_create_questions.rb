class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :quiz_id
      t.string :query
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :correct_answer
    end
  end
end