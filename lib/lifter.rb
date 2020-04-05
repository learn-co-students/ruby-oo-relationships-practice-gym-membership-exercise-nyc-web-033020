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
  def all_membership(name)
    Membership.all.select {|key| key.lifter.name == name}
  end
  def all_gym(name)
    array = []
    all_membership(name).each do |key|
        array << key.gym
      end
    array
  end

  def self.lift_totale
    lifters_lift_total = 0
    lifters_count = 0
    average = 0.0
    Lifter.all.each do |key| 
      lifters_lift_total += key.lift_total
    end
    lifters_count = Lifter.all.count * 1.0
    average = lifters_lift_total / lifters_count
    average
  end
  def total_cost(name)
    total = 0
    all_membership(name).select {|key| total += key.cost}
    total
  end
  def new_gym(gym, cost)
    Membership.new(cost, self, gym)
  end
end
