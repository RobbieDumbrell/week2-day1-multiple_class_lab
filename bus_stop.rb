require_relative('person.rb')

class BusStop

  attr_reader :name, :queue

  def initialize(name)
    @name = name
    @queue = []
  end
  
end
