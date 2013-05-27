require_relative 'test_helper'

class TestAddingQuestion < MiniTest::Unit::TestCase
   include DatabaseCleaner

  def test_takes_question_arguments_and_saves_them
    assert_equal 0, Question.count
    Question.create( quiz_id: '60s', query: 'What British Invasion act had the song "When I Get Home"?', a: 'The Hollies', b: 'The Rolling Stones', c: 'The Beatles', d: 'The Dave Clark Five', correct_answer: 'The Beatles' )
    assert_equal 1, Question.count
  end

  # def test_takes_user_arguments_and_saves_them
  #   assert_equal 0, User.count
  #   User.create( initials: 'foo' )
  #   assert_equal 1, User.count
  # end

  # def test_takes_user_arguments_and_uses_them
  #   User.create( initials: 'foo' )
  #   assert_equal 'foo', User.initials
  # end
  # def test_duplicate_names_are_ignored
  #   Project.create( name: 'foo' )
  #   original_project_count = Project.count
  #   `ruby futureperfect add foo`
  #   assert_equal original_project_count, Project.count
  # end

  # def test_duplicate_names_outputs_error_message
  #   Project.create( name: 'foo' )
  #   results = `ruby futureperfect add foo`
  #   assert results.include?('Name must be unique'), "Actually was '#{results}'"
  # end
end