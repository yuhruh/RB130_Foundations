items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "Nice selection of food we have gathered!"
end

gather(items) {|item| puts item.join(", ")}
# Let's start gathering food.
# apples, corn, cabbage, wheat
# Nice selection of food we have gathered!

gather(items) {|item| puts "We've gathered some vegetables: #{item[1]} and #{item[2]}."}
# Let's start gathering food.
# We've gathered some vegetables: corn and cabbage.
# Nice selection of food we have gathered!