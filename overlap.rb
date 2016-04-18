
def overlap(a,b)
  # Array(Coordinates), Array(Coordinates) => Boolean
  
  # a = [[0,0],[3,3]]
  ax1 = a.first.first 
  ay1 = a.first.last 
  ax2 = a.last.first 
  ay2 = a.last.last 
  
  awidth = ax2-ax1
  aheight = ay2-ay1
  aarea = awidth*aheight
  
  # b = [[1,1],[4,5]]
  bx1 = b.first.first
  by1 = b.first.last
  bx2 = b.last.first
  by2 = b.last.last
  
  bwidth = bx2-bx1
  bheight = by2-by1
  barea = bwidth*bheight

  #( [ [0  , 0  ],[3  , 3  ] ], [ [1  , 1  ],[4  , 5  ] ] )
  #( [ [ax1, ay1],[ax2, ay2] ], [ [bx1, by1],[bx2, by2] ] )
  
  if bx1 < ax2 && by1 < ay2
    true
  end
end

overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )

# further development needed to explore every case
