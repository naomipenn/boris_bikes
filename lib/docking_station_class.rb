require_relative "bike_class"

class DockingStation

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

  def capacity
    20
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
  @bikes.length >= capacity
  end


end
