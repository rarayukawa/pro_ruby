
def fizz_buzz(n)
  if n % 15 == 0
    'Fizz_Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(7)
puts fizz_buzz(8)
puts fizz_buzz(9)
puts fizz_buzz(12)
puts fizz_buzz(15)
puts fizz_buzz(18)
puts fizz_buzz(20)
puts fizz_buzz(24)
puts fizz_buzz(30)
puts fizz_buzz(42)
puts fizz_buzz(50)
puts fizz_buzz(60)
