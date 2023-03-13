def compute
  # Kernel#block_given? method can be used to determine if a block has been passed to a method.
  block_given? ? yield : "Does not compute"
end

p compute { 5 + 3 } #== 8
p compute { 'a' + 'b' } #== 'ab'
p compute #== 'Does not compute.'