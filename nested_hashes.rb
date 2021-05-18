instructors = ["Ian", "Johann", "Alex"]
students = ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"]
#Combine these arrays into a nested hash 
#Both the students and the instructors belong to the same school, so create a hash

school = { instructors: ["Ian", "Johann", "Alex"], 
students: ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"],
classes: ["Software Engineering", "Data Science"]
}

#If we wanted to access the :instructor array we would use bracket notation [] to grab the values.
instructors = school[:instructors] # => ["Ian", "Johann", "Alex"]
#we set a variable, instructors, equal to the return value of calling school[:instructors], which is simply the array of instructors.
#Can also use more than one set of brackets to find the index school[:instructors][0] #=> "Ian"

#Nesting a hash within a hash 
tv_show_characters = {
  "Homer Simpson" => {name: "Homer Simpson", occupation: "Nuclear Safety Inspector", hobbies: ["Watching TV", "Eating donuts"]},
  "Jon Snow" => {name: "Jon Snow", occupation: "King in the North", hobbies: ["Fighting white walkers", "Knowing nothing"]},
  "Mr. Rogers" => {name: "Mr. Rogers", occupation: "Neighbor", hobbies: ["Making children feel loved and appreciated", "Singing songs"]}
}

#Can directly look up a particular character's info by using their name: 
tv_show_characters["Homer Simpson"]
tv_show_characters["Jon Snow"][:occupation]
tv_show_characters["Mr Rogers"][:hobbies][1]

#Can use bracket notation multiple times to go deeper into data. Able to mix hash keys and array indexes. 

