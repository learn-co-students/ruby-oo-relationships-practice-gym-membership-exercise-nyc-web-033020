require 'pry'
class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def self.all
    @@all
  end
  def all_membership
    Membership.all.select {|key| key.lifter == self}
  end
  def all_gym
    self.all_membership.map {|key| key.gym}
  end

  def self.lift_totale
    lifters_lift_total = 0
    Lifter.all.each {|key| lifters_lift_total += key.lift_total}
    lifters_count = Lifter.all.count * 1.0
    lifters_lift_total / lifters_count
  end
  def total_cost
    total = 0
    self.all_membership.select {|key| total += key.cost}
    total
  end
  def new_gym(gym, cost)
    Membership.new(cost, self, gym)
  end
end
