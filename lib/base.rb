# frozen_string_literal: true

def bsearch(array, target)
  n = array.size
  l = 0
  r = n - 1
  while l <= r
    m = (l + r) / 2
    return m if target == array[m]

    if target < array[m]
      r = m - 1
    else
      l = m + 1
    end
  end
  nil
end
