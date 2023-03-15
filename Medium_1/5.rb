items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

#1
gather(items) do | *item, item1|
  puts item.join(", ")
  puts item1
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!
puts "----------------------------"

#2
gather(items) do | item1, *item, item2|
  puts item1
  puts item.join(", ")
  puts item2
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

puts "----------------------------"

#3
gather(items) do | item1, *item |
  puts item1
  puts item.join(", ")
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

puts "----------------------------"

#4
gather(items) do | item1, item2, item3, item4|
  puts "#{item1}, #{item2}, #{item3}, and #{item4}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!