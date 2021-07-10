class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    Lifter.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def self.average_total_lift
    total_lift = Lifter.all.map do |lifter|
      lifter.lift_total
    end
    combined_total_lift = total_lift.reduce(0) {|sum, n| sum + n}
    combined_total_lift / total_lift.length
  end

  def membership_cost
    total_cost = memberships.map do |membership|
      membership.cost
    end
    total_cost.reduce(0) {|sum, n| sum + n}
  end

  def new_lifter_membership(gym, cost)
    Membership.new(cost, gym, self)
  end

end