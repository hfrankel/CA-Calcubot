
class Character
  attr_accessor :name, :health, :strength, :height, :weight

  def initialize name, health, strength, height, weight
    @name = name
    @health = health
    @strength = strength
    @height = height
    @weight = weight
  end

end

ch001 = Character.new("Calcubot", 30, 20, 200, 200)
ch002 = Character.new("Alouise Smyth", 100, 100, 160, 60)
ch003 = Character.new("Gang Member 1", 5, 7, 175, 70)
ch004 = Character.new("Gang Member 2", 5, 7, 175, 70)
ch005 = Character.new("Gang Member 3", 5, 7, 175, 70)
ch006 = Character.new("Gang Member 4", 5, 7, 175, 70)