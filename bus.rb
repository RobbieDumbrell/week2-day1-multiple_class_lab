require_relative('person.rb')

class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum"
  end

  def passenger_count
    return @passengers.count
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    @passengers.delete(person)
  end

  def empty
    @passengers = []
  end

end
