def alphabetize(arr)
  # code here
  alpha1 = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha2 = "ABabcdefghijklmnopqrstuvwxyz"
  alpha_hash = {}
  idx = 0
  while idx<alpha1.size
    c = alpha1[idx]
    alpha_hash[c] = alpha2[idx]
    idx+=1
  end
  arr.sort{|a,b|
    idx = 0
    while idx < a.size
      c = a[idx]
      if idx < b.size
        
        c1 = alpha_hash[a[idx]]
        c2 = alpha_hash[b[idx]]
        puts "#{a[idx]}, #{b[idx]}, #{c1} ,#{c2}"
        if c1<c2
          -1
          break
        elsif c1 > c2
          1
          break
        end
      end
      idx+=1
    end
    if a.size == b.size
      0
    else
      1
    end
  }
end