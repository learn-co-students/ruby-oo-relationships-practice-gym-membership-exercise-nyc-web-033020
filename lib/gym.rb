class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    Gym.all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{ |membership| membership.gym == self }
  end

  def members
    memberships.map{ |membership| membership.member }
  end

  def member_names
    members.map{ |member| member.name }
  end

  def lift_total
    members.map{ |member| member.lift_total }.sum
  end

end
