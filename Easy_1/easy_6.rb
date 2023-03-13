def any?(arr)
  #return false if arr.empty?

  counter = 0
  while counter < arr.size
    return true if yield(arr[counter])
    counter += 1
  end

  false
end


def any?(collection) # enumerable#each for the loop, it will work with enumerable collection
  # included Arrays, Hashes, Sets....( we get addtional functionality for free on enumerable#each)
  collection.each{|ele| return true if yield(ele)}
  false
end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false