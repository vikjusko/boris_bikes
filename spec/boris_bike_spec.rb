require 'docking_station'
describe DockingStation do
    it "Testing release_bike" do
        docking_station = DockingStation.new
        expect(docking_station.release_bike).to eq "Your bike has been released."
    end
    
end