
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
