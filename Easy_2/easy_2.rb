# input: two arrays with the same number of elements
# output: return a new Array
# requirement:
# - original arrays should not be changed.

def zip(arr1, arr2)
  result_arr = []

  arr1.each_with_index do |ele, idx|
    result_arr << [ele, arr2[idx]]
  end
  result_arr
  
end

p zip([1, 2, 3], [4, 5, 6]) #== [[1, 4], [2, 5], [3, 6]]