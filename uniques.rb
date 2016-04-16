
#!/usr/bin/ruby

def uniques(array)
  # Array of Items => Array of Items
  # Takes an array, returns array with duplicate items removed.
  # Write without uniq

  no_dupes = []
  couples = array.combination(2)
  groups = array.group_by{|e| e}

  groups.each do |g|
    no_dupes.push(g[0])
  end

  return no_dupes
end

p uniques([1,5,"frog",2,1,3,"frog"])
