#Michael H. Glaser paired w/ Jenna Ritten & Rebecca Trachtenburg

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

puts "lengthsearch test"
x = 1
while x < 6
lengthsearch([1, 2, 3, 4,], x)
  x += 1
end

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

puts "eachsearch test"
x = 1
while x < 6
eachsearch([1, 2, 3, 4,], x)
  x += 1
end

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
    puts "Your fibonacci sequence is:"
    p fib_array
  end

end

puts "Input quantity of Fibonacci Numbers Desired."
fib_term_generator(gets.chomp.to_i)

#Release 2:
#Chose to learn insertion sort. In general, an example of how the general
#works in action works best for my understanding.  Reading about the sorting
# method, it seems like we're supposed to make a new array which will have the
# integers from the unsorted array inserted into it.  We start by taking the
#value from the first array and set that as our reference value. We must
#remember to remove it from the original array, or we will compare it to itself
# and we will end up with a duplicate value in the last array. When the value
# is smaller than the reference, it is placed before the reference in the array.
#If the value getting sorted is larger than the reference, it is placed after
# the reference. This is repeated for all elements in the array using each.do.

#psudocode:
#unsorted array = [array]
#sorted array = first value of unsorted array
#remove first value from unsorted array to prevent duplicates in output.
#Begin loop
#compare value at index 0 in unsorted array to reference in sorted array.
#if unsorted value is smaller than sorted value, insert at sorted index value
#if unsorted value is larger than sorted value, insert after sorted index.
#increase sorted index by 1.
#end loop.

#unsorted_array = [2, 7, 1, 3, 9, 4]
def array_sorting(unsorted_array)
  sorted_array = [unsorted_array[0]]
  unsorted_array.delete_at(0)
  unsorted_array.each do |unsorted_item|
    sorted_index = 0
    while sorted_index < sorted_array.length
      if unsorted_item <= sorted_array[sorted_index]
        sorted_array.insert(sorted_index, unsorted_item)
        break
      elsif sorted_index == sorted_array.length - 1
        sorted_array.insert(sorted_index + 1, unsorted_item)
        break
      end
      sorted_index += 1
    end
  end
  p sorted_array
end

puts "Please define an unsorted array for sorting:."
array_sorting([1, 8, 3, 5, 2, 7, 6])
