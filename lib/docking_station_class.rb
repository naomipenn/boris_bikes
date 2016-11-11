require_relative "bike_class"

class DockingStation

  attr_accessor :bikes

  def initialize
  @bikes = Array.new
  end

  def dock(bikes)
    fail 'Docking station is full' if @bikes.length >= capacity
    @bikes << bikes
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes
  end

  def capacity
    20
  end


end
