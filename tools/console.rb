# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

jordan = Lifter.new("jordan", 200)
lance = Lifter.new("lance", 200)
terry = Lifter.new("terry", 100.5)

new_gym_jordan1= jordan.new_gym("24h fitness", 5) 
new_gym_jordan2= jordan.new_gym("planet fitness", 10)
new_gym_jordan3= jordan.new_gym("equinox", 200)  
new_gym_lance1= lance.new_gym("24h fitness", 5)
new_gym_lance2= lance.new_gym("planet fitness", 10)
new_gym_lance3= lance.new_gym("equinox", 200) 

equinox = Gym.new("equinox")
planet_fitness = Gym.new("planet fitness")
h_fitness = Gym.new("24h fitness")

binding.pry

puts "Gains!"
