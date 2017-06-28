#write your code here
def add one, two
  one + two
end
def subtract one, two
  one - two
end

def sum array
  s = 0
  array.each do |x|
    s += x
  end
  s.to_i
end

def multiply array
  m = 1
  array.each do |x|
    m*=x
  end
  m.to_i
end

def power number, power
  p = 1
  power.times do
    p *= number
  end
  p.to_i
end

def factorial number
  if number == 0 || number == 1
    return 1
  end

  return number * factorial(number - 1)
end
