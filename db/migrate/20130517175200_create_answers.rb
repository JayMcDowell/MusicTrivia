class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :question_id
      t.string :user_id
      t.string :given_answer
      t.string :correct
    end
  end
end