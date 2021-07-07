class Lifter
  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all 
    @@all
  end

  def memberships
    Membership.all.select{ |membership| membership.member == self }
  end

  def gyms 
    memberships.map{ |membership| membership.gym }
  end

  def self.avg_lift_total
    Lifter.all.map{ |lifter| lifter.lift_total }.sum / Lifter.all.length
  end

  def join(gym,cost)
    Membership.new(self,gym,cost)
  end

end
