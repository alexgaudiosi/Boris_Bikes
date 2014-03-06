require_relative 'bike_container'
require_relative "bike"

class DockingStation

	include BikeContainer

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
		@bikes=[]
	end

  def available_repair
    # @bikes, @collect = @bikes.partition{|bike|bike.broken?}
    @bikes.select {|bike| !bike.broken? }
  end

end
