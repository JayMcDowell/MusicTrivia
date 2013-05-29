require_relative 'test_helper.rb'

class TestAddingUser < MiniTest::Unit::TestCase
   include DatabaseCleaner

  def test_takes_user_arguments_and_uses_them
    User.create( initials: 'foo' )
    assert_equal 1, User.count
  end

  def test_takes_user_arguments_and_uses_them
    user = User.create( initials: 'bar' )
    assert_equal('bar', user[:initials])
  end
end