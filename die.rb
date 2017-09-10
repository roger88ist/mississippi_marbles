class Die

	# Roll this die and returns the value.
	#
	# @return int
	def roll
		self.current_value = rand(1..6)
		return self.current_value
	end

	# Returns the current value of this die.
	#
	# @return int
	def value
		return self.current_value
	end
end