# a method take an array as an argument, and it should yield the contents of the array to a block.
# ignore the first two elements

def pass_parameters(arr)
  yield(arr)
end

pass_parameters(%w(raven finch hawk eagle)) do |_, _, *animals|
  p animals
  p "Animals: #{animals.join(", ")}."
end

# the splat operator on the name block variable tells Ruby to treat it as an array
# and assign all remaining arguments to it.