def fibo_to(max_value)
  
  fib = [0, 1]
  
  loop do
    value = fib[-1] + fib[-2]
    break if value >= max_value
    fib << value
  end

  fib
end

p fibo_to(100)