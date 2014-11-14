jQuery ->
  p1=$("a[rel~=popover], .has-popover").popover
  #if p1?
   #p1()
  p2=$("a[rel~=tooltip], .has-tooltip").tooltip
  #if p2?
   #p2()