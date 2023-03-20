# Internal Iteration: The process and implementation of that iteration is hidden from us, and the process
# that allows us to progress through a collection is part of that hidden implementation.

# External Iteration: This is iteration that takes place at the bahest of the user. Ruby gives us the 
# option to use this type of iteration with the `Enumerator` class.

# An `Enumerator` also implements the `Enumerable` module. 

# `rewind -> e`: Rewinds the enumeration sequence to the beginning.
# If the enclosed object responds to a "rewind" method, it is called.

factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end

# External iterators

6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "=========================="
6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "=========================="
factorial.rewind
6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "=========================="

# Internal iterators

factorial.each_with_index do |value, number|
  puts "#{number}! == #{value}"
  break if number >= 5
end


0! == 1         # Output of first times loop
1! == 1
2! == 2
3! == 6
4! == 24
5! == 120
==========================
0! == 720       # Output of 2nd times loop: note the incorrect output
1! == 5040
2! == 40320
3! == 362880
4! == 3628800
5! == 39916800
==========================
0! == 1         # Output of 3rd times loop: this time output is correct
1! == 1
2! == 2
3! == 6
4! == 24
5! == 120
==========================
0! == 1         # Output of each_with_index
1! == 1
2! == 2
3! == 6
4! == 24
5! == 120