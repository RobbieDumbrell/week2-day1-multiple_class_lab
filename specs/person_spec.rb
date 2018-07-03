require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("tahnee", 32)
  end

  def test_check_name
    assert_equal("tahnee", @person.name)
  end

  def test_check_age
    assert_equal(32, @person.age)
  end

end
