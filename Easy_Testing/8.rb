assert_kind_of(Numeric, value)

# `#assert_kind_of` uses `Object#kind_of?` to check if the class of its second argument is an
# instacne of the named class or one of the named class's subclasses.