def missing(arr)
  arr.min.upto(arr.max).to_a.select do |num|
    !(arr).include?(num)
  end
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []