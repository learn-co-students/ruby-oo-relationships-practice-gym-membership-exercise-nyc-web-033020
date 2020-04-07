# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Chuck", 800)
lifter2 = Lifter.new("Sarah", 1100)
lifter3 = Lifter.new("Casey", 2000)
lifter4 = Lifter.new("Morgan", 400)
lifter5 = Lifter.new("Devon", 1900)

gym1 = Gym.new("Gym 1")
gym2 = Gym.new("Gym 2")
gym3 = Gym.new("Gym 3")
gym4 = Gym.new("Gym 4")
gym5 = Gym.new("Gym 5")

membership1 = Membership.new(20, gym5, lifter1)
membership2 = Membership.new(40, gym2, lifter2)
membership3 = Membership.new(15, gym2, lifter1)
membership4 = Membership.new(25, gym2, lifter2)
membership5 = Membership.new(30, gym5, lifter1)

binding.pry

puts "Gains!"
