require 'test_helper.rb'

class TestAddingQuestion < Test::Unit::TestCase
  def test_takes_arguments_and_saves_them
    # start with no projects
    assert_equal Question.count, 0
    # `ruby futureperfect add foo`
    project = Question.create( correct_answer: 'foo' )
    # project => #<Project:12312 @name='foo'>
    # end up with a 'foo' project
    assert_equal Question.count, 1
  end
end