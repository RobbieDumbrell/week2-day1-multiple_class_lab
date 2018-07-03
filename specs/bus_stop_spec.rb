require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop.rb')

class TestBusStop < MiniTest::Test

  def setup
    @waverley = BusStop.new("Waverley")
    @robbie = Person.new("Robbie", 25)
  end

  def test_check_name
    assert_equal("Waverley", @waverley.name)
  end

  def test_check_queue
    assert_equal([], @waverley.queue)
  end

  def test_add_person_to_queue
    @waverley.add_to_queue(@robbie)
    assert_equal(1, @waverley.queue_count)
  end



end
