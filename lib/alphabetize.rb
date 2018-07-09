def alphabetize(arr)
  # code here
  alpha1 = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alpha2 = "ABabcdefghijklmnopqrstuvwxyz"
  alpha_hash = {}
  alpha1.each_with_index{|c, idx|
    alpha_hash[c] = alpha2[idx]
  }
  arr.sort{|a,b|
    a.each_with_idx{|c, idx|
      
      
      if idx < b.size
        c1 = alpha_hash[a[idx]]
        c2 = alpha_hash[b[idx]]
        if c1<c2
          return 1
        elsif c1 > c2
          return -1
        end
      end
      if a.size == b.size
        return 0
      else
        return -1
      end
    }
  }
end