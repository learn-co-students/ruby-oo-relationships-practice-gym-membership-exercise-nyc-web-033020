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
  def all_membership
    Membership.all.select {|key| key.gym == self}
  end
  def all_lifters
    self.all_membership.map {|key| key.lifter}
  end
  def lifters_name
    self.all_lifters.map {|key| key.name}
  end
  def lift_total_to_gym
    total = 0
    self.all_lifters.select {|key| total += key.lift_total}
    total
  end

end
