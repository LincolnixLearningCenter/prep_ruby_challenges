
# Produces each number and which person said it
# Hash {Person(Int)=>List of Numbers(Array of Integers)}

def main(players,number)

  persons = []

  players.times do
    persons.push []
  end

  count = 0
  pos = 0
  inc = +1

  until count == number
    pos = pos%10
    count = count+1


    if count%7 == 0
      arrow = set_arrow(inc)
      
      persons[pos].push "#{count} REVERSE #{arrow}"
      pos = pos-inc

      inc = inc.positive? ? -1 : +1
        #inc = -1
      #else
        #inc = +1
      #end

      if count%11 == 0
        persons[pos+inc].push "#{count+1} SKIP #{arrow}"
        pos = pos+(2*inc)
        count = count+1
      end

    elsif count%11 == 0
      arrow = set_arrow(inc)

      persons[pos].push "#{count} SKIP #{arrow}"
      pos = pos+(2*inc)
    
    elsif count == 100
      persons[pos].push "#{count} SAID by #{pos+1}"
    else
      arrow = set_arrow(inc)
      
      persons[pos].push "#{count} #{arrow}"
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

end

def set_arrow(i)
  if i.positive?
    "v"
  else
    "^"
  end
end

main(10,100)
