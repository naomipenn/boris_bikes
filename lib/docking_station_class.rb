require_relative "bike_class"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :bikes

  def initialize
  @bikes = Array.new
  end

  def dock(bikes)
    fail 'Docking station is full' if full?
    @bikes << bikes
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
  @bikes.length >= DEFAULT_CAPACITY
  end


end
