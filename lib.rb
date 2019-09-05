# Game characters

class Character
  attr_accessor :name, :health, :strength

  def initialize name, health, strength
    @name = name
    @health = health
    @strength = strength
  end

end



# Fight system

def fight(alpha, beta)
random_alpha_str = rand(alpha.strength) # In the range of 0 to max strength stat
random_beta_str = rand(beta.strength)

fight_hit = random_alpha_str - random_beta_str

  if fight_hit >= 0
    true
  else
    false
  end
end


