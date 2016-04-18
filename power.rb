
def power(base,exponent)
  # returns base raised to the power of exponent without the use of ** operator
  
  a = base
  b = exponent
  c = []

  b.times do
    c.push a
  end

  p c.inject(1) {|product, n| product * n}
end

power(3,4)
