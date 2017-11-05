# Return the fiboacci value of n position.
# The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21...

def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-1) + fib(n-2)
  end
end

fib(5) # => 5
fib(6) # => 8