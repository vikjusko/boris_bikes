require 'bike.rb'
class DockingStation

  def initialize
      @bike = nil
  end

  def release_bike
      puts "Docking station is empty" if @bike == nil
      # if @bike has bike then return it and remove it from @bike
      # if @bike is empty then raise error
      @bike
  end

  def dock(bike)
    @bike =  bike
      return "Bike is docked"
  end

  def show
    @bike
  end

end

docking_station = DockingStation.new
docking_station.release_bike

