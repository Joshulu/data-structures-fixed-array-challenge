class FixedArray

	def initialize(size)
		if size <= 0
			raise ArgumentError, "Array must have size of at least 1"
		end
		@fixed_array = []
		size.times { @fixed_array.push(0) }
	end

	def length
		@fixed_array.length
	end

	def get(index)
		check_bounds(index)
		@fixed_array[index]
	end

	def set(index, element)
		check_bounds(index)
		@fixed_array[index] = element
		@fixed_array[index]
	end

	def check_bounds(index)
		if @fixed_array[index] == nil
			raise ArgumentError, "Argument is outside of array bounds"
		end
	end
end
