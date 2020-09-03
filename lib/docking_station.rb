require 'bike.rb'
class DockingStation
attr_reader :docked_bikes
  def initialize
      @docked_bikes = []
  end

  def release_bike
    @docked_bikes
    fail "No bikes available" unless @docked_bikes
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

docking_station = DockingStation.new
docking_station.release_bike

#  begin 
# raise ("Docking station is empty") if @docked_bikes.empty?
# rescue StandardError => e
#        puts "Docking station is empty"
#     end 