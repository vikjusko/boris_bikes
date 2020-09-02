require 'docking_station'
require 'bike.rb'
describe DockingStation do
    it "Testing release_bike" do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to(:release_bike)
    end
    
    it "Gets a bike" do
        bike = Bike.new
        expect(bike.working?).to eq true
    end   
end