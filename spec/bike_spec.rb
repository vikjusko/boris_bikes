require 'bike.rb'
describe Bike do 
    it "responds to working method" do
        expect(Bike.new).to be_working
    end
end 