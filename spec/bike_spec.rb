require 'bike.rb'
describe Bike do 
    it "responds to working method" do
        expect(Bike.new).to be_working
    end

    it "responds to a broken method" do
        expect(Bike.new).to respond_to(:broken?)
    end 
end 