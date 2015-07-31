module List
	class Node
		attr_accessor :value, :next_node
		
		def initialize (value,next_node=nil)
			@value = value
			@next_node = next_node
		end
		
	end

class LinkedList
	attr_accessor :head
	
	def initialize (value=nil)
		if value==nil
			@head = nil
		else
			@head = Node.new(value)	
		end
	end
	
	public
	# head insertion takes O(1) time
	def add(value)
		new_node = Node.new(value,@head)
		@head = new_node
	end
	
	def find(value)
		node = @head
		while node!=nil and node.value!=value do
			node = node.next_node
		end
		if node!=nil and node.value == value
		 return true
		else
			return false
		end
	end
	
end

end
