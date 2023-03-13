def count(arr)
  counter = 0

  arr.each {|ele| counter += 1 if yield(ele) }

  counter 
end

# recursive way
def count(arr, &block)
  return 0 if arr.empty? # base case
  yield(arr.shift) ? count(arr, &block) + 1 : count(arr, &block) # reduction case
end


p count([1,2,3,4,5]) { |value| value.odd? }  == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 }  == 2
p count([1,2,3,4,5]) { |value| true }  == 5
p count([1,2,3,4,5]) { |value| false }  == 0
p count([]) { |value| value.even? }  == 0
p count(%w(Four score and seven)) { |value| value.size == 5 }  == 2