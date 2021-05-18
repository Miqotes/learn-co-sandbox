# Any simple array can be displayed using this method we frequently used prior. 

array = [100, 300, 50, 450]
count = 0
 
while count < array.length do
  puts array[count]
  count += 1
end

#If we wanted to for example perform a math operation on each element we would do 

array = [100, 300, 50, 450]
count = 0
 
while count < array.length do
  array[count] = array[count] * array[count]
  count += 1
end
 
array

#If we didn't want to modify the original, we can of course collect the results into a varible 

array = [100, 300, 50, 450]
results_array = []
count = 0
 
while count < array.length do
  results_array << array[count] * array[count]
  count += 1
end
 
results_array

#Another example is deriving a single value from an array of elements. We could do so by following this example

array = [100, 300, 50, 450]
sum = 0
count = 0
 
while count < array.length do
  sum = sum + array[count]
  count += 1
end
 
sum # => 900

#First we start with a single while loop to go through a nested array

count = 0
 
while count < array_of_arrays.length do
  p array_of_arrays[count]
  count += 1
end
#using p to make output more clear at this time

#We can use a second while loop within the first to access each nested array 

count = 0
 
while count < array_of_arrays.length do
  p array_of_arrays[count]
 
  inner_count = 0
  while inner_count < array_of_arrays[count].length do
    p array_of_arrays[count][inner_count]
    inner_count += 1
  end
 
  count += 1
end
#Again p is used to show each outer loop
#Everytime the outer while loop executes, the inner while loop runs 3 times.



