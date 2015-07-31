
module List
	class Node
		attr_accessor :value, :next
		
		def initialize (value,next_node=nil)
			@value = value
			@next = next_node
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
	
	# To check whether the linked list has the particular value or not
	def has?(value)
		node = @head
		while node!=nil and node.value!=value do
			node = node.next
		end
		if node!=nil and node.value == value
		 	return true
		else
		 	return false
		end
	end
	
	#To remove the head element from the list
	def remove_head
		if @head != nil 
			new_head = @head.next
			@head = new_head
			return true
		end
		return false
	end
	
	#To remove the first element with particular value 
	def remove value
		node = @head
		if node == nil
			return false
		elsif node.value == value
			return remove_head
		else
		#Iterate till the value before it
		while node.next != nil and node.next.value!=value do
			node = node.next
		end
		if node.next == nil
			return false
		else
			node.next = node.next.next
			return true
		end
	end
	end
	
	#To remove all the occurences of value from linked list
	def remove_all value
		node = @head
		if node == nil
			return false
		else
		
		remove_head if node.value == value
		prev = node
		curr = node.next
		#Iterate till the value before it
		while curr != nil do
			if curr.value == value
				prev.next = curr.next
				curr = curr.next
			else
				prev = curr
				curr = curr.next
			end
		end
		end
	end
	
	# To return the linked list elements in a printable format  array like string
		def to_s
		arr ="["
		node = @head
		while (node!=nil) do
			arr << node.value.to_s << ","
			node = node.next
		end
		arr[arr.length-1] = "]"
		 return arr
	end
end

end

#Test code for linked list
linked_list = List::LinkedList.new


linked_list.add(5)
linked_list.add(4)
linked_list.add(3)
linked_list.add(2)

puts linked_list.has? 3
puts linked_list.has? 2
puts linked_list.has? 5
puts linked_list.has? 1


linked_list.add(2)
linked_list.add(3)
linked_list.add(2)
linked_list.add(5)
print linked_list
linked_list.remove_all 2

print linked_list
