
def factorial(n)
  # Int => Int
  # Takes a number and returns the product of every number up to 
  # the current number multiplied together

  a = []

  n.downto(1).each do |i|
    a.push i
  end

  p a.inject(1) {|product, n| product * n}

end

factorial(5)
