#Searches an array for a number returning its index.  If not found, returns nil.
def search_array(array, number)
  idx = 0
  while idx < array.length
  	if array[idx] == number
      return idx
	end
	idx += 1
  end
  nil
end

p search_array([1,2,3,4,5,6,7,8,9,10], 3)
p search_array([1,2,3,4,5,6,7,8,9,10], 11)

#Stores the fibonacci sequence to the nth number
def fibonacci(number)
  i = 0
  result = [0, 1]
  until result.length == number
    result << result[i] + result[i + 1]
    i += 1
  end
  result
end

p fibonacci(6)
p fibonacci(10)

#Uses bubble sort to sort an arary
def bubble_sort(array)
  boolean = false
  until boolean
  	boolean = true
    i = 0
    while i < array.length - 1
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        boolean = false
      end
      i += 1
    end
  end
  array
end

p bubble_sort([3,5,1,2,8,4])

