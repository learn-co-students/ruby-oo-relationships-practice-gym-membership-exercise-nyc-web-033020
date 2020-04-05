# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

hulk = Lifter.new("Hulk", 2000)
rock = Lifter.new("The Rock", 1500)
su = Lifter.new("Steven Universe", 30000)
arnold = Lifter.new("Arnold", 1000)
fran = Lifter.new("Fran", 1200)

gym1 = Gym.new("Gym 1")
gym2 = Gym.new("Gym 2")
gym3 = Gym.new("Gym 3")

hulk.join(gym1,30)
hulk.join(gym2, 24)
hulk.join(gym3, 68)
rock.join(gym2,24)
su.join(gym2,24)
arnold.join(gym2,24)
fran.join(gym2,24)


binding.pry

puts "Gains!"
