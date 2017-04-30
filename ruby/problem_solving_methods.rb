#Michael H. Glaser paired w/ Jenna Ritten & Revecca Trachtenburg

#Release 0
def lengthsearch(search_array, search_integer)
  index = 0
  output = nil
    while index < search_array.length
    if search_integer == search_array[index]
      output = index
      index = search_array.length
    else
      index += 1
    end
  end
  p output
end

#puts "lengthsearch test"
#x = 1
#while x < 6
#lengthsearch([1, 2, 3, 4,], x)
#  x += 1
#end

def eachsearch(search_array, search_integer)
  index = 0
  output = nil
  search_array.each do |array_integer|
    if array_integer == search_integer
      output = index
    else
      index += 1
    end
  end
  p output
end

#puts "eachsearch test"
#x = 1
#while x < 6
#eachsearch([1, 2, 3, 4,], x)
#  x += 1
#end

#Release 1: Calculate Fibonacci Numbers

def fib_term_generator(n)

  fib_array = [0, 1]
  index = 2
  while n < index
    p "A Fibonacci Sequence requires at least 2 numbers."
    break if n < index
  end

  while index < n
    fib_integer = fib_array[-1] + fib_array[-2]
    fib_array << fib_integer
    index += 1
  end

  fib_100 = 218922995834555169026

  if fib_array[-1] == fib_100
    p "The fibonacci sequence method is accurate to 100."
  elsif index == n
    p fib_array
  end

end

puts "Input quantity of Fibonacci Numbers Desired."
fib_term_generator(gets.chomp.to_i)
