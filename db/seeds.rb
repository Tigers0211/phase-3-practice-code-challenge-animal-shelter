Adopter.destroy_all
Shelter.destroy_all
Pet.destroy_all

puts "Deleting seeds"
puts "Creating seeds"
bindi = Pet.create(name: "Bindi", age: 3, species: "mutt", adopted?: true)
roscoe = Pet.create(name: "Roscoe", age: 8, species: "Rottweiler", adopted?: true)
max = Pet.create(name: "Max", age: 6, species: "Lab", adopted?: false)

humane = Shelter.create(name: "Humane Society", address: "123 easy way")
place = Shelter.create(name: "Humane Org", address: "124 easy way")

me = Adopter.create(first_name: "Caleb", last_name: "Summeralls" )
will = Adopter.create(first_name: "William", last_name: "Jordan" )
ben = Adopter.create(first_name: "Ben", last_name: "Kurose" )
 
puts "Seeds Complete!!"

me.pets << bindi
will.pets << roscoe
ben.pets << max

humane.pets << bindi
humane.pets << roscoe
place.pets << max


