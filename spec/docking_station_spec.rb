require_relative "../lib/docking_station.rb"

describe DockingStation do

	let (:station) { DockingStation.new(:capacity => 123) }

	it "should allow setting default capacity on intitialising" do

		expect(station.capacity).to eq(123)

	end

		it "should seperate broken bikes" do
		expect(station.available_repair).to include(@bikes=[])
	end

end

