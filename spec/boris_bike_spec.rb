require 'docking_station'
require 'bike.rb'

describe DockingStation do
    it "Testing release_bike" do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to(:release_bike)
    end

    it "raises an error when releasing bike with empty docking station" do
      docking_station = DockingStation.new
      expect { docking_station.release_bike }.to raise_error("Docking station is empty")
    end
    
    it "Gets a bike" do
        bike = Bike.new
        expect(bike.working?).to eq true
    end   

    it "docks a bike" do
        docking_station = DockingStation.new
        bike = Bike.new
        expect(docking_station.dock(bike)).to eq("Bike is docked") 
    end 

    it "docks a bike without error when DockingStation is under capacity" do
      docking_station = DockingStation.new
      (docking_station.capacity - 1).times { docking_station.dock(Bike.new) }
      expect(docking_station.dock(Bike.new)).to eq("Bike is docked")
    end

    it "raises an error when DockingStation is at default capacity" do
        docking_station = DockingStation.new
        expect { (docking_station.capacity + 1).times { docking_station.dock(Bike.new) } }.to raise_error("Docking station is at capacity")
    end 

    it "raises an error when Docking station is at a given capacity" do 
        docking_station = DockingStation.new(4)
        expect { (docking_station.capacity + 1).times { docking_station.dock(Bike.new) } }.to raise_error("Docking station is at capacity")
    end 



    it "shows the docked bike" do
        docking_station = DockingStation.new
        bike = Bike.new
        docking_station.dock(bike)
        expect(docking_station.show).to eq(docking_station.docked_bikes)
    end 


end