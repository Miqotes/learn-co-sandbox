#using psuedocode. 

while cooking_for_friends
  if anyone_is_vegetarian
  vegetarian_meal = true 
  end 
end 

#we can convert this psuedocode method like this 

def is_anyone_vegetarian?(list_of_dietary_restrictions)
  # Given a collection of dietary restrictions (["lactose intolerant", "none", "allergic to peanuts", "vegetarian"])
  # If any of them are vegetarian
  # return `true`; else, return `false`
end 

#If we were to encode this and not do psuedocode

def is_anyone_vegetarian(list_of_dietary_restrictions)
  i = 0 
  while i < list_of_dietary_restrictions.length do 
    if list_of_dietary_restrictions[i] == "vegetarian"
      return true 
    end 
    i += 1 
  end 
  return false 
end 

# To feel truly comfortable with Enumerable methods, we have to understand the challenging coding ideas of:

#Capturing work (but not doing it) using a thing called a block
#Doing the work and passing it arguments based on visiting each element or pair in the collection. This is called yielding to a block
#Gathering a new collection or combining the individual results into an aggregate result
