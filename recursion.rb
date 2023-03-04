# frozen_string_literal: true

# Fibonacci using iteration
def fibs(n, arr = [0, 1])
  if n < 2
    n
  else
    until arr.length == n
      arr.push(arr[-1] + arr[-2])
    end
  end
  arr
end

# Fibonacci using recursion
def fibs_rec(n)
  if n < 2
    n
  elsif n > 1
    n = fibs_rec(n - 1) + fibs_rec(n - 2)
  end
  n
end

# merge sort
def merge_sort(arr = [8, 3, 5, 6, 7, 4, 1, 2])
  if arr.length == 1
    arr
  elsif arr.length > 1
    left = merge_sort(arr[0, arr.length / 2])
    right = merge_sort(arr[arr.length / 2, arr.length])
    arr = [left, right].flatten.sort { |a, b| a <=> b }
  end
  arr
end
