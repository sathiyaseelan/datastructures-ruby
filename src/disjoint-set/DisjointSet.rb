
# Disjoint set implementation based on weighted quick union and path compression
module DisjointSet

	class DisjointSet
	
		def initialize(n)
			@ref = Array.new(n)
			@size = Array.new(n)
			(0...n).each do |i|
				@ref[i] = i
				@size[i] = 1
			end
		end
		
		public
		
		# To connect to elements in the set
		def union a,b
			i = root(a)
			j = root(b)
			if i!=j
				if @size[i] < @size[j]
					@ref[i] = j
					@size[j]+=@size[i]
				else
					@ref[j] = i
					@size[i]+=@size[j]
				end
			end
		end
		
		# To check whether two elements are connected are not
		def connected? a,b
			if root(a) == root(b)
				return true
			else
				return false
			end
		end
		
		private
		
		def root a
			i = a
			while (i!=@ref[i]) do
				@ref[i] = @ref[@ref[i]]
				i = @ref[i]
			end
			return i
		end
	
	end
end

