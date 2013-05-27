class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :question_id
      t.string :user_id
      t.boolean :correct
    end
  end
end