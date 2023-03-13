assert_instance_of(Numeric, value)

# `assert_instance_of` uses `Object#instance_of?` to ensure that its second argument is an instance
# of the class named as its first argument.
# this test is more useful when dealing with inheritance.