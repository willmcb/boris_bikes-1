require 'bike'
class DockingStation
  attr_accessor :bikes

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end
  def release_bike
    available? ? get_bike : (raise Exception.new("No bikes"))
  end
  def dock_bike(bike)
    full? ? @bikes << bike : (raise Exception.new("Dock is full"))
  end

  def available?
    !@bikes.empty?
  end

  private
  def get_bike
    @bikes.pop
  end
  def full?
    @bikes.size < DEFAULT_CAPACITY
  end
end
