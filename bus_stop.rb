require_relative('person.rb')

class BusStop

  attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_count
    return @queue.count
  end

  def add_to_queue(person)
    @queue << person
  end

  def clear_queue
    @queue.clear
  end

end
