def alphabetize(arr)
  # code here
  ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  ALPHA    = "ABabcdefghijklmnopqrstuvwxyz"
  alpha_hash = {}
  ALPHABET.each_with_index{|c, idx|
    alpha_hash[c] = ALPHA[idx]
  }
  arr.sort{|a,b|
    
  }
end