# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  accum = 0
  arr.each {|elem| accum += elem }
  accum
end

def max_2_sum arr
  accum = 0
  sorted_array = arr.sort
  
  accum = sorted_array.pop if !sorted_array.empty?
  accum += sorted_array.pop if !sorted_array.empty?
  
  accum
end

def sum_to_n? arr, n
  index = 1
  arr.sort.each do |elem|
    accum = elem
    return true if arr[index..(arr.length-1)].any? { |elem2| accum + elem2 == n }
    index += 1
  end
  false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
  (s =~ /\A[bcdfghjklmnpqrstvwxyz]/i) == 0
end

def binary_multiple_of_4? s
 !s.empty? and s.each_char.all? { |char| char == '1' or char == '0' } and (s.to_i(2) % 4 == 0)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'Bad argument' if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end

