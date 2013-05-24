require_relative 'test_helper'

class TestAddingQuestion < MiniTest::Unit::TestCase
   include DatabaseCleaner

  def test_adds_initials_to_db
    user = User.add_initials("mmh")
    expected = user.initials
    assert_equal "mmh", expected
  end
end

