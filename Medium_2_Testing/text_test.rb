require 'minitest/autorun'
require_relative 'text'

class TextTest < Minitest::Test
	def setup
		@file = File.open("Sample_text.txt")
		@sample_text = @file.read
		@text = Text.new(@sample_text)
	end

	def test_swap
		swapped_text = @text.swap("a", "e")
		expected_text = @sample_text.gsub("a", "e")


		assert_equal(expected_text, swapped_text)
	end

	def test_word_count
		expected_word_count = @sample_text.split.count
		actual_word_count = @text.word_count

		assert_equal(expected_word_count, actual_word_count)

	end



	def teardown
		@file.close
		puts "File has been closed: #{@file.closed?}"
	end


end