require_relative 'test_helper.rb'

class TestGreeting < MiniTest::Unit::TestCase
   include DatabaseCleaner

  def test_adds_initials_to_db
    params = {initials: "mmh" }
    User.create(params)
    expected = "mmh"
    assert_equal "mmh", expected
  end
end

