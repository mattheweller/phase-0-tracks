def in_array?(arr, int)
  arr.each_with_index do |ele, idx|
    return idx if ele == int
  end
  nil
end

p "in_array?: " + (in_array?([42, 89, 23, 1], 1) == 3).to_s
p "in_array?: " + (in_array?([42, 89, 23, 1], 24) == nil).to_s

###############################################
###############################################

def fib_nums(num)
  arr = [0, 1]
  (2...num).each {arr << ((arr[-2]) + (arr[-1]))}
  arr
end

# def fib_nums(num)
#   result = [0, 1]
#   i = 2
#   while i < num
#     result << ((result[i - 2]) + (result[i - 1]))
#   i += 1
#   end
#   result
# end

p "fib_nums: " + (fib_nums(100).last == 218922995834555169026).to_s

###############################################
###############################################

# insertion sort
# initiate an index number
# enter a loop that iterates through the length of the input array
# assign a variable to the element at the current index
# assign an inner index variable equal to one less than the out index value
# enter another loop, while the inner index is greater or equal to zero, and the element at the inner index is greater than the element at the current index
# in the inner while loop
  # assign the element at the inner (index + 1) equal to the element at the inner index
  # assign the inner index to the inner (index - 1)
  # Exit the inner while loop
# assign 
# assign the inner index to the inner (index - 1)
# Exit the inner while loop
# return the in-place sorted array.

# My pair and I were working on putting this together, but ran into an infinite loop 
# when testing, and had to take a screen shot to capture our progress: https://cl.ly/260S1B1i2z15

def insertion_sort(arr)
  i = 0
  while i < arr.length
    sorted = arr[i]
    j = i - 1
    while j >= 0 && arr[j] > sorted
    arr[j + 1] = arr[j]
    j -= 1
    end
  arr[j + 1] = sorted
  i += 1
  end
  arr
end

p "insertion_sort: " + (insertion_sort([9,8,7,6,5,4,3,2,1]) == [1, 2, 3, 4, 5, 6, 7, 8, 9]).to_s

# My pair and I wrote this solution together based off the research we found here: https://en.wikipedia.org/wiki/Insertion_sort

# bubble sort
# create a boolean set to false, that we will set to true once things are sorted
# enter a loop 
# set boolean to true
# enter another loop
# for the length of your sorting array,
#   if current value is greater than the element to the right,
#   assign current element to position to the right and assign
#   position to the right to current index
#   reassign boolean to false
# return the array

def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    (arr.count - 1).times do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx + 1], arr[idx] = arr[idx], arr[idx + 1]
        sorted = false
      end
    end
  end
  arr
end

p "bubble_sort: " + (bubble_sort([2, 3, 4, 1]) == [1, 2, 3, 4]).to_s

# My pair and I wrote this solution together based off the research we found here: https://en.wikipedia.org/wiki/Bubble_sort

