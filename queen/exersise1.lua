-- this is an 8 queen algorithm that seeks to place 8 queens on the board such that no queen can attack another
--
N = 8 -- board size 

-- checking for positions

function placeok(a,n,c)
  for i = 1, n-1 do
    if(a[1] == c) or
      (a[i] - i == c-n) or
      (a[i] + i == c+n) then
        return false
      end
  end
  return true

end

--print the board
function board(a)
  for i= 1, N do
    for j = 1, N do
      io.write(a[i] == j and "X" or "-", " ")
    end
    io.write("\n")

  end
  io.write("\n")
end

--add queens
function queen(a,n)
  if n>N then
    board(a)
  else
    for c = 1, N do
      if placeok(a,n,c) then
        a[n] = c
        queen(a, n+1)
        
      end
    end
  end
end

queen({}, 1)
