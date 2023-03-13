# method that do the same thing as Range#step
# take 3 arguments and a block
  # 3 arguments: starting value, ending value, step value that applied to each iteration.
  # yield a block

def step(starting_value, ending_value, step)
  current_value = starting_value

  while current_value <= ending_value
    yield(current_value)
    current_value += step
  end
  current_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }
#value = 1
#value = 4
#value = 7
#value = 10