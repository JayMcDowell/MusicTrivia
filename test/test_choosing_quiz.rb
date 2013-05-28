require_relative 'test_helper'

class TestChoosingQuiz < MiniTest::Unit::TestCase
   include DatabaseCleaner

  def user_chooses_quiz_and_corresponding_quiz_is_utilized
    Question.create( quiz_id: '60s', query: 'What British Invasion act had the song "When I Get Home"?', a: 'The Hollies', b: 'The Rolling Stones', c: 'The Beatles', d: 'The Dave Clark Five', correct_answer: 'The Beatles' )
    assert_equal 1, Question.count
  end