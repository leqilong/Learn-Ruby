def add (int1, int2)
  int3 = int1+int2
end


def subtract (int1, int2)
  int3 = int1-int2
end

def sum (arr)
  total = 0
  arr.each do |x|
    total += x
  end
  return total
end

def multiply (arr)
  total=1
  arr.each do |x|
    total *= x
  end
    return total
end

def power (num1, num2)
  num3 = num1**num2
end

def factorial (num)
  if num ==0
    return 1
  elsif num >0
    total = num*factorial(num-1)
  end
end
