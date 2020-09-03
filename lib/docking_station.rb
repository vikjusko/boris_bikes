require 'bike.rb'
class DockingStation

  attr_reader :docked_bikes

  def initialize (capacity = 1)
    @capacity = capacity 
    @docked_bikes = []
  end

  def release_bike
    raise RuntimeError.new "Docking station is empty" if @docked_bikes.empty?
    @docked_bikes
  end

  def dock(bike)
    raise RuntimeError.new "Docking station is at capacity" if @docked_bikes.length == @capacity
    @docked_bikes << bike
    return "Bike is docked"
  end

  def show
    @docked_bikes
  end

end
