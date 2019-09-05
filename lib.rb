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

# Explain method and that it is a pseudo loop

def validate_input_1option
  begin
    x = gets.chomp.to_i
  raise "Incorrect Input" if x != 1
  return x
  rescue
    puts "Please Enter 1"
    validate_input_1option
  end
end

def validate_input_2options
  begin
    x = gets.chomp.to_i
  raise "Incorrect Input" if x != 1 && x != 2
  return x
  rescue
    puts "Please Enter 1 or 2"
    validate_input_2options
  end
end

def validate_input_3options
  begin
    x = gets.chomp.to_i
  raise "Incorrect Input" if x != 1 && x != 2 && x != 3
  return x
  rescue
    puts "Please Enter 1, 2 or 3"
    validate_input_3options
  end
end
