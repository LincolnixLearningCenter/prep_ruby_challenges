**prep<sub>ruby</sub><sub>challenges</sub>**

[The Ruby challenge problems from the Markup and Coding course of the Viking Code School Prep Work](http://www.vikingcodeschool.com/web-markup-and-coding/level-up-your-ruby-judo)

# Ruby Calisthenics

## Power

Write a method *power* which takes two integers (*base* and *exponent*) and 
returns the *base* raised to the power of *exponent*. Do not use Ruby's "\*\*"
operator for this!

    > power(3,4)
    => 81 # (3*3*3*3)

    def power(base,exponent)
      # returns base raised to the power of exponent without the use of ** operator
    
      a = base
      b = exponent
      c = []
    
      b.times do
        c.push a
      end
    
      #c.inject(0) {|d,e| d*e}
      c.inject(1) {|product, n| product * n}
    end
    
    power(3,4)

    81

## Factorial

## Uniques

## Combinations

## Primes

## Rectangle Overlap
