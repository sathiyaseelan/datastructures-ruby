
set = DisjointSet::DisjointSet.new(10)

set.union(0,1)
set.union(1,2)
set.union(4,3)
set.union(4,5)
set.union(5,6)
set.union(0,6)
puts set.connected?(0,2)

puts set.connected?(0,4)

