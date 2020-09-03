require 'bike.rb'
class DockingStation
    def initialize 
    end 
    
    def release_bike
        self
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

