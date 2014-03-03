# link to the Bike Class
require_relative "../lib/bike"
require_relative "../lib/docking_station.rb"

# we're describing the functionality of a specific class, Bike
describe Bike do

	let (:bike) { Bike.new }

	it "should not be broken after we create it" do
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		bike.break
		expect(bike).to be_broken
	end

	it "should be able to get fixed" do
		bike.break
		bike.fix
		expect(bike).not_to be_broken
	end
end

describe DockingStation do

	it "should accept a bike" do
		bike = Bike.new
		station = DockingStation.new
		# we expect the station to have 0 bikes
		expect(station.bike_count).to eq(0)
		# let's dock a bike into the station
		station.dock(bike)
		# now we expect the station to have 1 bike
		expect(station.bike_count).to eq(1)
	end

end
