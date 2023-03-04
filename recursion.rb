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
