
def overlap(a,b)
  # Array(Coordinates), Array(Coordinates) => Boolean
  
  # a = [[0,0],[3,3]]
  ax1 = a[0][0]
  ay1 = a[0][1] 
  ax2 = a[1][0]
  ay2 = a[1][1]
  
  awidth = ax2-ax1
  aheight = ay2-ay1
  aarea = awidth*aheight
  
  # b = [[1,1],[4,5]]
  bx1 = b[0][0]
  by1 = b[0][1]
  bx2 = b[1][0]
  by2 = b[1][1]
  
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
