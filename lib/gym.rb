class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end

  def names
    lifters.map do |lifter|
      lifter.name
    end
  end

  def combined_lift_total
    arr_lift_total = []

    lifters.each do |lifter|
      arr_lift_total << lifter.lift_total
    end
    arr_lift_total.reduce(0) {|sum, n| sum + n}
  end

end