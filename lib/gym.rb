class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def all_membership(gym)
    Membership.all.select {|key| key.gym == gym}
  end
  def all_lifters(gym)
    array = []
    all_membership(gym).select do |key| 
        array << key.lifter
      end
    array
  end
  def lifters_name(gym)
    array = []
    all_lifters(gym).select do |key| 
      array << key.name
    end
    array
  end
  def lift_total_to_gym(gym)
    total = 0
    all_lifters(gym).select {|key| total += key.lift_total}
    total
  end

end
