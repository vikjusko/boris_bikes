require 'bike.rb'

class DockingStation

  attr_reader :docked_bikes, :capacity

  def initialize (capacity = 20)
    @capacity = capacity
    @docked_bikes = []
  end

  def release_bike
    raise "Docking station is empty" if empty?
    @docked_bikes.shift
  end

  def dock(bike)
    raise "Docking station is at capacity" if full?
    @docked_bikes << bike
    return "Bike is docked"
  end

  def show
    @docked_bikes
  end

  private

  def full?
    @docked_bikes.length == @capacity
  end

  def empty?
    @docked_bikes.empty?
  end
end