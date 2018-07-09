def alphabetize(arr)
  # code here
  ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  ALPHA    = "ABabcdefghijklmnopqrstuvwxyz"
  alpha_hash = {}
  ALPHABET.each_with_index{|c, idx|
    alpha_hash[c] = ALPHA[idx]
  }
  arr.sort{|a,b|
    a.each_with_idx{|c, idx|
      if idx < b.size
        if a[idx]<b[idx]
          return 1
        elsif a[idx] > b[idx]
          return -1
      end
      if a.size == b.size
        return 0
      else
        return -1
      end
    }
  }
end