class Song 
  attr_accessor :name 
  @@all = [] #.all acts as a reader for the @@all class variable. Exposes piece of data to the rest of the application.
  def initialize(name)
    @name = name 
  end 
  
  def self.all #is a class method for reading the data stored in the class variable @@all 
    @@all
  end
  
end

#ex. 
tim = Person.new("Tim")
tim.name #=> "Tim"

#Everytime your application requires you to find a particular person by name, you will have to use #find or some sort of iteration logic on Person.a;; to find a specific instance of a person, not an array. 

#We can define a class method (a finder) to search better and easier. For example. 

class Person
  attr_accessor :name
  @@all = []
 
  def initialize(name)
    @name = name
    @@all << self
  end
 
  def self.all
    @@all
  end
 
  def self.find_by_name(name)
    @@all.find{|person| person.name == name} #this is the finder class method 
  end
 
end

#Person.new("Grace Hopper")
#Person.new("Sandi Metz")
 
#sandi_metz = Person.find_by_name("Sandi Metz")
#sandi_metz #=> #<Person @name="Sandi Metz">
 
#grace_hopper = Person.find_by_name("Grace Hopper")
#grace_hopper #=> #<Person @name="Grace Hopper">
 
#avi_flombaum = Person.find_by_name("Avi Flombaum")
#avi_flombaum #=> nil

#If we ever needed to update @@all this code would break. 
class Person
  attr_accessor :name
  @@people = [] # changed from @@all
 
  def initialize(name)
    @name = name
    @@people << self # changed from @@all
  end
 
  def self.all
    @@people # changed from @@all
  end
 
  def self.find_by_name(name)
    @@people.find{|person| person.name == name}
    # changed from @@all
  end
 
end


