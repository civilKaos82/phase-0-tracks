#Michael H. Glaser paired w/ Jenna Ritten & Revecca Trachtenburg
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

#lengthsearch test
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
end

#eachsearch test
puts "eachsearch test"
x = 1
while x < 6
lengthsearch([1, 2, 3, 4,], x)
  x += 1
end
