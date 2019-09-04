# Game characters

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

# Fight system

=begin

In a fight scenario...

A vs B

A random number is generated for A's strength stat in the range 0 to max strength.

Then a random number is generated for B's strength stat also in the range 0 to max strength.

A.rand.strength - B.rand.strength = ANS

If ANS + B.health - ANS = B.health until B.health <= 0

This sequence then stops

if ANS - A.health - ANS = A.health until A.health <= 0

=end


def fight(alpha, beta)

random_alpha_str = rand(alpha.strength)
random_beta_str = rand(beta.strength)

fight_hit = random_alpha_str - random_beta_str

  if fight_hit >= 0
    "#{alpha.name} wins!"
  else
    "#{beta.name} wins!"
  end

end

p fight(ch001, ch003)

