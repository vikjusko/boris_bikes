require 'bike.rb'
class DockingStation
    def initialize 
    end 
    
    def release_bike
    self
    end

end 

docking_station = DockingStation.new
docking_station.release_bike

