require_relative "./chapter_list/chapter1"
require_relative "./chapter_list/chapter2"
require_relative "./chapter_list/chapter3"
require_relative "./chapter_list/chapter4"
require_relative "./chapter_list/chapter5"
require_relative "./chapter_list/chapter6"
require_relative "./chapter_list/chapter7"
require_relative "./chapter_list/chapter8"
require_relative "./chapter_list/chapter9"
require_relative "./chapter_list/chapter10a"
require_relative "./chapter_list/chapter10b"
require_relative "./lib"

require "colorize"
require "io/console"

# Character list

calcubot = Character.new("Calcubot", 30, 30)
alouise_smyth = Character.new("Alouise Smyth", 15, 100)
gang_member_1 = Character.new("Gang Member 1", 7, 5)
gang_member_2 = Character.new("Gang Member 2", 7, 5)
gang_member_3 = Character.new("Gang Member 3", 7, 5)
gang_member_4 = Character.new("Gang Member 4", 7, 5)
wild_bear = Character.new("Bear", 10, 10)
the_oracle = Character.new("The Oracle", 6, 20)
old_man = Character.new("Old Man", 4, 3)
young_man = Character.new("Young Man",7 ,8)
shipmaster = Character.new("Shipmaster", 5, 5)
ol_gammy_leg = Character.new("Ol' Gammy Leg", 8, 15)
greg = Character.new("Greg", 100, 100)
dr_finklefeinstein = Character.new("Dr. Henrikh Finklefeinstein", 7, 7)

# Opening credits

puts "
█▀▀ █▀▀█ █░░ █▀▀ █░░█ █▀▀▄ █▀▀█ ▀▀█▀▀
█░░ █▄▄█ █░░ █░░ █░░█ █▀▀▄ █░░█ ░░█░░
▀▀▀ ▀░░▀ ▀▀▀ ▀▀▀ ░▀▀▀ ▀▀▀░ ▀▀▀▀ ░░▀░░

Press Enter
"

gets.chomp

# //////////////////////////////

chapter1
gets.chomp

# //////////////////////////////
  
chapter2

winner_ch2 = fight(calcubot, gang_member_1)

main_choice_ch2_op = gets.chomp.to_i

case main_choice_ch2_op
when 1
  puts "#{calcubot.name} surrenders peacefully

Suddenly a hidden figure appears. The gang members spot the figure and
immediately flee.

It is the witch #{alouise_smyth.name}."
when 2
  if winner_ch2 == true
    puts "#{calcubot.name} wins!

It encounters Alouise Smyth, a witch posessing a magical staff."
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////

chapter3

main_choice_ch3_op = gets.chomp.to_i

case main_choice_ch3_op
when 1
  puts "For repairing shelf, #{calcubot.name} has been gifted...

=> +health"
when 2
  puts "#{calcubot.name} and #{alouise_smyth.name} depart."
end

gets.chomp

# //////////////////////////////

chapter4

winner_ch4 = fight(calcubot, wild_bear)

main_choice_ch4_op = gets.chomp.to_i

case main_choice_ch4_op
when 1
  puts "Take the long road around the bear. => -health"
when 2
  puts "The bear runs off, spooked by the rock. => +health"
when 3
  if winner_ch4 == true
    puts "#{calcubot.name} wins!

=> +strength" 
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////

chapter5

winner_ch5 = fight(calcubot, the_oracle)

main_choice_ch5_op = gets.chomp.to_i

case main_choice_ch5_op
when 1
  puts "#{the_oracle.name} does not know exactly where Calcubot must go to
return home but she has a feeling that the answer to that question can be
found at Shady Pines in Bladderpool... => +health"
when 2
  puts "#{calcubot.name} sadly hands over to #{the_oracle.name} its golden
antenna.

#{the_oracle.name} does not know exactly where Calcubot must go to
return home but she has a feeling that the answer to that question can be
found at Shady Pines in Bladderpool... => -health"
when 3
  if winner_ch5 == true
    puts "#{calcubot.name} wins!

#{the_oracle.name} does not know exactly where Calcubot must go to
return home but she has a feeling that the answer to that question can be
found at Shady Pines in Bladderpool... => +health, +strength"
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////

chapter6

winner_ch6 = fight(calcubot, young_man)

main_choice_ch6_op = gets.chomp.to_i

case main_choice_ch6_op
when 1
  puts "\"Sorry not interested.\" #{calcubot.name} steps away.

#{calcubot.name} meet's back up with Alouise who has more information. It is
as she feared. There is only one item in Yourope that might be able to help.
That is Schvaytee's Pocketwatch. A powerful watch that can manipulate
time. It is in the posession of the Daemon, Greg on the Isle of Dawn.

They must find a ship. The closest port is at Portsmath.
Calcubot and Alouise head to Portsmath."
when 2
  puts "On this occasion #{calcubot.name} happens to get lucky and wins!
=> +strength, +health

#{calcubot.name} meet's back up with Alouise who has more information. It is
as she feared. There is only one item in Yourope that might be able to help.
That is Schvaytee's Pocketwatch. A powerful watch that can manipulate
time. It is in the posession of the Daemon, Greg on the Isle of Dawn.

They must find a ship. The closest port is at Portsmath.
Calcubot and Alouise head to Portsmath."
when 3
  if winner_ch6 == true
    puts "#{calcubot.name} wins!

=> +strength" 
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////

chapter7

winner_ch7 = fight(calcubot, ol_gammy_leg)

main_choice_ch7_op = gets.chomp.to_i

case main_choice_ch7_op
when 1
  puts "#{ol_gammy_leg.name} agrees to help => +health"
when 2
  puts "Gammy agrees to help but you must trade the gold antenna.
=> -health"
when 3
  if winner_ch7 == true
    puts "#{calcubot.name} wins!

=> +strength" 
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////

chapter8

main_choice_ch8_op = gets.chomp.to_i

case main_choice_ch8_op
when 1
  puts "#{calcubot.name} takes Schvaytee's Pocketwatch
=> +health

#{calcubot.name} and #{alouise_smyth.name} exit."
end

gets.chomp

# //////////////////////////////

chapter9

winner_ch9 = fight(calcubot, ol_gammy_leg)

main_choice_ch9_op = gets.chomp.to_i

case main_choice_ch9_op
when 1
  puts "She relents and lets Calcubot keep the pocketwatch => +health"
when 2
  if winner_ch9 == true
    puts "#{calcubot.name} wins!

#{calcubot.name} subdues Alouise and returns home => +health +strength"
  else
    puts "#{calcubot.name} loses but #{alouise_smyth.name} take pity.
    
She allows #{calcubot.name} to return home."
  end
end

gets.chomp
  
# //////////////////////////////

chapter10a
gets.chomp

# //////////////////////////////
puts "
▀▀█▀▀ █░░█ █▀▀   █▀▀ █▀▀▄ █▀▀▄
░░█░░ █▀▀█ █▀▀   █▀▀ █░░█ █░░█
░░▀░░ ▀░░▀ ▀▀▀   ▀▀▀ ▀░░▀ ▀▀▀░
"