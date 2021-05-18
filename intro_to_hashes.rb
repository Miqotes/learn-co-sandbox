prices = {
  "bread" => 2.35,
  "milk" => 3.00,
  "eggs" => 2.15
}

#can have values of different types, strings, arrays, or hashes 

{:item => "banana", 
:price => 0.89, :quantity => 6, 
:description => "a delicious fruit"
}

#easisest way to create as hash is to write it out like seen 

new_hash = { 
:created => Time.now,
:message => "Hello world!"
}

json_hash = {created: Time.now,
message: "Hello world!"}

#retrieving data from a hash

pets = {"cat" => "Maru", "dog" => "Pluto"}
pets ["cat"]

meals = {:breakfast => "cereal", :lunch => "peanut butter and helly sandwich", :dinner => "mushroom risotto"}
meals[:breakfast]

#works the same with integers

healthy_things = {1 => "learn to garden", 2 => "plant seeds", 10 => "eat vegetables"}

healthy_things[10] 

#can also use variables inside brackets

key =:name 

user_info = {:name => "Ada", :email => "ada.lovelace@famous_computer_inventors.com"}

user_info[key]

#If we use bracket notation and pass in a value that doesn't match a key on the hash, it will return nil by default

grocery_items = {:apples => 10, :pears => 4, :peaches => 2, :plums => 13}
grocery_items[:rambutans] #=> nil

#this can be useful because nil is falsy while any data type value is truthy(empty arrays/hashes as well). 
#Allows us to check if a hash has a key/value pair or not since we can use bracket method in a conditional statement
#using the above for example

if grocery_items[:rambutans]
  puts "Rambutan present!"
else
  puts "No rambutan."
end
# No rambutan.

#hashkey.fetch() allows you to look up a key and specify the return if it is not found
#Using Symbols for Hash Keys And why they're ideal 
#Symbols are scalar data type, share similarities with strings, always start with a :, every symbol take up a small amount of memory on the computer.
#object_id shows us the location in memory where the symbol is stored. Ex 
:i_am_a_symbol.object_id
#Use it on a string and see that even if two strings are the same, they take up seperate allocations of memory because string data can change. 
#Symbols unlike strings cannot be changed. Symbols are immutable.



