assert_include(list, 'xyz')

# we can also use `#assert_equal` to test it
assert_equal(true, list.include?('xyz'))