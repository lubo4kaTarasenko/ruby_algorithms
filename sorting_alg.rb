
class Array

###### quicksort

	def q
		return [] if empty?
		pivot = delete_at((size/2))
		left, right = partition { |x| x < pivot}
		left.q + [pivot] + right.q
	end

###### bubble_sort
	
	def b
		loop do
			swapped = false
			(size-1).times do |i|
				if self[i] > self[i+1]
					self[i], self[i + 1] = self[i+1], self[i] 
					swapped = true
				end
			end
			break unless swapped
		end
		self
	end
end


