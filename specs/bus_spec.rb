require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @robbie = Person.new("Robbie", 25)
    @tahnee = Person.new("Tahnee", 32)
    @waverley = BusStop.new("Waverley")
  end

  def test_check_route_number
    assert_equal(22, @bus.route_number)
  end

  def test_check_destination
    assert_equal("Ocean Terminal", @bus.destination)
  end

  def test_bus_can_drive
    drive_noise = @bus.drive
    assert_equal("Brum Brum", drive_noise)
  end

  def test_check_passengers_exists
    assert_equal([], @bus.passengers)
  end

  def test_passenger_count
    assert_equal(0, @bus.passenger_count)
  end

  def test_pick_up_person_on_bus
    @bus.pick_up(@robbie)
    assert_equal(1, @bus.passenger_count)
  end

  def test_drop_off_person
    @bus.pick_up(@robbie)
    @bus.drop_off(@robbie)
    assert_equal(0, @bus.passenger_count)
  end

  def test_empty_bus
    @bus.pick_up(@robbie)
    @bus.pick_up(@tahnee)
    assert_equal(2, @bus.passenger_count)

    @bus.empty
    assert_equal(0, @bus.passenger_count)
  end

  def test_pick_up_all_from_stop
    @waverley.add_to_queue(@robbie)
    @waverley.add_to_queue(@tahnee)
    @bus.pick_up_all(@waverley)

    assert_equal(2, @bus.passenger_count)
    assert_equal(0, @waverley.queue_count)
  end



end
