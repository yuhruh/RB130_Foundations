# iterate through the number which is from 1 to input integer
# select the number which is integer can be divisible by the number

def divisors(int)
  (1..int).to_a.select do |div|
    int % div == 0 
  end


# further exploration
# try to reduce to divisors

def divisors(int)
  max_divisor = Integer.sqrt(int) # use Integer#sqrt: returns the integer square root of the non-negative 
  # integer n, i.e. the largest non-negative integer less than or equal to the square root of n.
  result = []

  (1..max_divisor).to_a.each do |div|
    if int % div == 0
      result << div
      result << (int/div)
    end
  end
  result.uniq.sort
end