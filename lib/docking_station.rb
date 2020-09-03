require 'bike.rb'
class DockingStation

  attr_reader :docked_bikes

  def initialize
      @docked_bikes = []
  end

  def release_bike
    raise RuntimeError.new "Docking station is empty" if @docked_bikes.empty?
    @docked_bikes
  end

  def dock(bike)
    @docked_bikes << bike
    return "Bike is docked"
  end

  def show
    @docked_bikes
  end

end
