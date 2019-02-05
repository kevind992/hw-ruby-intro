# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  
  if !arr.empty?
    return arr.max(2).reduce(:+)
  else
    return 0
  end
  
end

def sum_to_n? arr, n
  
  return arr.combination(2).any? {|a, b| a + b == n }
  
end

# Part 2

def hello(name)
  
  return "Hello, #{name}"
  
end

def starts_with_consonant? s
    
  return /^[b-df-hj-np-tv-z]/i.match(s) != nil
  
end

def binary_multiple_of_4? s
    
  return true if s == "0"
  return /^[10]*00$/.match(s) != nil
	
end

# Part 3

class BookInStock

attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
	    
		raise ArgumentError, "Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
		
	end

	def price_as_string
	    
		sprintf("$%2.2f", @price)
		
	end
end
