# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce 0, :+
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  return false if arr.empty?
  arr.combination(2).any? {|a, b| a + b == n}
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !!(s[0] =~ /[b-df-hj-np-tv-z]+/i)
end

def binary_multiple_of_4? s
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
