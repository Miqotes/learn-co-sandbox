person = { name: "Sam", age: 31 }
#updating hash values is similar to looking them up for example 

person[:age] #=> 31
person[:age] = 32 #=> 32

#using bracket-equals method we can mutate any value stored inside a hash as long as we know the associated key. 
#Remember attempting to lookup a key that isn't stored, will return nil. BUT if you use bracket-equals, you can create a new key/value pair on the hash.
person[:hometown] = "Brooklyn, NY" #creates new key/value

#general syntax for adding new value to a hash: hash[key:new_key] = "New value"
#to add to a key value you could do for example shipping_manifest["oil painting"] = shipping_manifest["oil painting"] + 1 OR shipping_manifest["oil painting"] += 1 
#we can use a conditional if we want to add a new value 

shipping_manifest = {
  "whale bone corset" => 5,
  "porcelain vase" => 2,
  "oil painting" => 3,
  "silverware" => 34,
  "loom" => 1
} 

if shipping_manifest["top hat"]
  shipping_manifest["top hat"] += 1 
else shipping_manifest["top hat"] = 1 
end

#running this again would update top hat to 2. 
