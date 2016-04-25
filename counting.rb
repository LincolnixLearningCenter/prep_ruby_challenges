
# Produces each number and which person said it
# Hash {Person(Int)=>List of Numbers(Array of Integers)}

friends = 10
persons = []

friends.times do
  persons.push []
end

count = 0
pos = 0
inc = +1

until count > 99
  pos = pos%10
  count = count+1

  if count%11 == 0
    persons[pos].push "#{count} >>>>"
    pos = pos+(2*inc)
  elsif count%7 == 0
    persons[pos].push "#{count} <<"
    pos = pos-inc
    inc = -1
  else
    persons[pos].push "#{count} >>"
    pos = pos+inc
  end

end

persons.each_with_index do |p,index|
  puts "person #{index+1} says:"
  p.each do |i|
    p i
  end
  puts "\n"
end
