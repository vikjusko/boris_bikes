require 'docking_station'
describe DockingStation do
    it "Testing release_bike" do
        docking_station = DockingStation.new
        expect(docking_station.release_bike).to eq "Your bike has been released."
    end

    it "Gets a bike" do
        expect(bike.working?).to eq "Yes"
    end
    
end