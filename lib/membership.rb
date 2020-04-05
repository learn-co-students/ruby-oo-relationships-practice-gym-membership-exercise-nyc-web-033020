class Membership
  @@all = []
  attr_reader :cost, :member, :gym

  def initialize(member,gym,cost)
    @cost = cost
    @member = member
    @gym = gym
    Membership.all << self
  end

  def self.all
    @@all
  end

end
