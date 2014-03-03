class Bike

	# the intitialize method is always called when you create a new
	# class by typing Bike.new
	def initialize
		fix
		# all instance variables beging with "@"
		# this must be an instance variable because we'll need it
		# in other methods
		@broken = false
	end

	def broken?
		# instance variables are accessible in all methods
		@broken
	end

	def break
		# and any instance method can update them
		@broken = true
	end

	def fix
		@broken = false
	end

end