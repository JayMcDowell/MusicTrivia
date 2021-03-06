# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130517175800) do

  create_table "answers", :force => true do |t|
    t.string  "question_id"
    t.string  "user_id"
    t.boolean "correct"
  end

  create_table "questions", :force => true do |t|
    t.string "quiz_id"
    t.string "quiz_level"
    t.string "query"
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "correct_answer"
  end

  create_table "quizzes", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string "initials"
  end

end
