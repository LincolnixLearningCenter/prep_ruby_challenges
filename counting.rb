
# Produces each number and which person said it
# Hash {Person(Int)=>List of Numbers(Array of Integers)}

# Example Return Steps
# { 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 6 => 6, 7 => 7, 8 => nil, 9 => nil, 10 => nil }
# { 1 => [1,12], 2 => 2, 3 => [3,11], 4 => [4,10], 5 => [5,9], 6 => [6,8], 7 => 7, 8 => nil, 9 => nil, 10 => nil }
# { 1 => [1,12], 2 => 2, 3 => [3,11], 4 => [4,10], 5 => [5,9], 6 => [6,8], 7 => 7, 8 => nil, 9 => 14, 10 => [13,15] }
# { 1 => [1,12,16,25], 2 => [2,17,24], 3 => [3,11,18,23], 4 => [4,10,19], 5 => [5,9,20,22], 6 => [6,8,21], 7 => 7, 8 => nil, 9 => 14, 10 => [13,15] }

friends = 10
persons = []

friends.times do
  persons.push []
end

count = 1

until count > 100
  persons.each_with_index do |person,index|
    id = index+1

    if count%7 > 0
      person.push count
    else
      person.push "#{count}, reverse"
    end

    p id
    p person
    count = count+1
  end

end
