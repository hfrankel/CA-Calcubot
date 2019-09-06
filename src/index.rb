# Main index file

require_relative "./lib.rb"
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

Press Enter For New Game

OR

e To Exit
"


user_input = gets.chomp

if user_input == "e"
    exit
end

puts "Pick your Calcubot name"

calcubot.name = gets.chomp

puts "Lets play #{calcubot.name}"


# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   ▄█░
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   ░█░
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   ▄█▄
"
puts "2066

The mad scientist Dr. Henrikh Finklefeinstein has launched his latest
invention.

#{calcubot.name}.

#{calcubot.name} is a blank robot, designed to learn surrounding behaviour.

One day in Dr. Finklefeinstein's lab, he is playing catch with #{calcubot.name}.
#{calcubot.name} has recently spent time watching dog videos on YouTube and so when
Dr. Finklefeinstein throws the ball at pace across the room, #{calcubot.name} chases it
like a lunatic.

Unfortunately for #{calcubot.name} and Dr. Finklefeinstein, the robot slams into the
doctor's time & universe machine sitting in the corner and engages
the time mechanism.

#{calcubot.name} is sent back in time 1000 years to an alternate universe..."

gets.chomp

# ////////////////////////////// 
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   █▀█
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   ░▄▀
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   █▄▄

...and lands in Angland, Yourope.

#{calcubot.name} is suddenly in danger. It's square in the middle of
4 menacing humans.

They attack #{calcubot.name}.

What is that thing?!

OPTIONS:

(1) Surrender peacefully
(2) Fight back and subdue"

winner_ch2 = fight(calcubot, gang_member_1)

# main_choice_ch2_op = validate_input

main_choice_ch2_op = validate_input_2options

case main_choice_ch2_op
when 1
  puts "#{calcubot.name} surrenders peacefully

Suddenly a hidden figure appears. The gang members spot the figure and
immediately flee.

It is the witch #{alouise_smyth.name}."
when 2
  if winner_ch2 == true
    puts "#{calcubot.name} wins!".blue.on_yellow.blink

puts "It encounters Alouise Smyth, a witch posessing a magical staff."
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   █▀▀█
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   ░░▀▄
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   █▄▄█

Whittaker Forest, Angland

Alouise takes #{calcubot.name} to her home. They make a plan on how to get #{calcubot.name}
back to its world. Alouise agrees to accompany #{calcubot.name} and cast a spell to
make it appear as a human. After struggling to make a solid plan, Alouise
suggests that they see The Oracle, a dangerous and powerful being.

On the way out, #{calcubot.name} notices a broken shelf.

OPTIONS:
(1) Repair shelf
(2) Leave"

main_choice_ch3_op = validate_input_2options

case main_choice_ch3_op
when 1
  puts "For repairing shelf, #{calcubot.name} has been gifted...

=> +health"
when 2
  puts "#{calcubot.name} and #{alouise_smyth.name} depart."
end

gets.chomp

# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   ░█▀█░
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   █▄▄█▄
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   ░░░█░

In the woods on the way to the Oracle. An aggressive, wild bear approaches.
Alouise says not to worry about the bear. It can't hurt them.

OPTIONS:
(1) Leave the bear alone
(2) Throw a small rock to distract the bear
(3) Attack the bear"

winner_ch4 = fight(calcubot, wild_bear)

main_choice_ch4_op = validate_input_3options

case main_choice_ch4_op
when 1
  puts "Take the long road around the bear. => -health"
when 2
  puts "The bear runs off, spooked by the rock. => +health"
when 3
  if winner_ch4 == true
    puts "#{calcubot.name} wins!".blue.on_yellow.blink

puts "=> +strength" 
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   █▀▀
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   ▀▀▄
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   ▄▄▀

Meeting with The Oracle. The Oracle says she will tell #{calcubot.name} how to get home.
But for a price. She wants his gold antenna for her collection of rare items.

\"How can you see my antenna?\"

\"I'm The Oracle...\"

OPTIONS:
(1) Passionately plea with the Oracle to give answer without giving up antenna
(2) Give up gold antenna
(3) Fight The Oracle"

winner_ch5 = fight(calcubot, the_oracle)

main_choice_ch5_op = validate_input_3options

case main_choice_ch5_op
when 1
  puts "#{the_oracle.name} does not know exactly where #{calcubot.name} must go to
return home but she has a feeling that the answer to that question can be
found at Shady Pines in Bladderpool... => +health"
when 2
  puts "#{calcubot.name} sadly hands over to #{the_oracle.name} its golden
antenna.

#{the_oracle.name} does not know exactly where #{calcubot.name} must go to
return home but she has a feeling that the answer to that question can be
found at Shady Pines in Bladderpool... => -health"
when 3
  if winner_ch5 == true
    puts "#{calcubot.name} wins!".blue.on_yellow.blink

puts "
#{the_oracle.name} does not know exactly where #{calcubot.name} must go to
return home but she has a feeling that the answer to that question can be
found at Shady Pines in Bladderpool... => +health, +strength"
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   ▄▀▀▄
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   █▄▄░
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   ▀▄▄▀

Our gang find themselves in Bladderpool. Alouise says she is going to go to
the Shady Pines Tavern to try get more information. She tells #{calcubot.name} to
stay where he is and not interact with anyone. #{calcubot.name} is looking around and
sees an old man motion towards him. #{calcubot.name} approaches.

The old man has a classic shell game in front of him and asks if #{calcubot.name}
wants to play. The min fee is 1 item and the old man will double whatever the
player gambles. An impossibly large younger man makes his way to
the shell game table.

\"Well Dad, looks like we got a player here. Sir, what's it gonna be?\"

OPTIONS:
(1) Politely decline
(2) Gamble with money you don't have
(3) Gamble with money you don't have ...arrogantly."

winner_ch6 = fight(calcubot, young_man)

main_choice_ch6_op = validate_input_3options

case main_choice_ch6_op
when 1
  puts "\"Sorry not interested.\" #{calcubot.name} steps away.

#{calcubot.name} meet's back up with Alouise who has more information. It is
as she feared. There is only one item in Yourope that might be able to help.
That is Schvaytee's Pocketwatch. A powerful watch that can manipulate
time. It is in the posession of the Daemon, Greg on the Isle of Dawn.

They must find a ship. The closest port is at Portsmath.
#{calcubot.name} and Alouise head to Portsmath."
when 2
  puts "On this occasion #{calcubot.name} happens to get lucky and wins!
=> +strength, +health

#{calcubot.name} meet's back up with Alouise who has more information. It is
as she feared. There is only one item in Yourope that might be able to help.
That is Schvaytee's Pocketwatch. A powerful watch that can manipulate
time. It is in the posession of the Daemon, Greg on the Isle of Dawn.

They must find a ship. The closest port is at Portsmath.
#{calcubot.name} and Alouise head to Portsmath."
when 3
  if winner_ch6 == true
    puts "#{calcubot.name} wins!".blue.on_yellow.blink

puts "=> +strength" 
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   ▀▀▀█
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   ░░█░
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   ░▐▌░

Portsmath, Angland

#{calcubot.name} and Alouise start their search at Shipmaster's Gate, where they come
across the Shipmaster.

\"I'm sorry but there are no vessles that go to the Isle of Dawn. You will have
to find your own or somehow convince one of those mad bastards down by Shawshank
Docks to take you ...and they take a lot of convincing.\"

\"I'm sure we can work something out.\"

\"Try Ol' Gammy leg. She'd be the only one to dare do it.\"

At the docks... #{calcubot.name} spots what looks to be Ol Gammy Leg.

OPTIONS:
(1) Catch up to \"Ol' Gammy Leg\" and politely ask for her help
(2) Shout \"Ol' Gammy Leg!\" then ask for her help
(3) Shout \"Oi!\" and whistle at Gammy then demand her help"

winner_ch7 = fight(calcubot, ol_gammy_leg)

main_choice_ch7_op = validate_input_3options

case main_choice_ch7_op
when 1
  puts "#{ol_gammy_leg.name} agrees to help => +health"
when 2
  puts "Gammy agrees to help but you must trade the gold antenna.
=> -health"
when 3
  if winner_ch7 == true
    puts "#{calcubot.name} wins!".blue.on_yellow.blink

puts "=> +strength" 
  else
    puts "#{calcubot.name} loses. #{alouise_smyth.name} revives."
  end
end

gets.chomp

# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   ▄▀▀▄
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   ▄▀▀▄
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   ▀▄▄▀

Isle of Dawn, off Angland Coast

Alouise and #{calcubot.name} wade through a thick jungle.

They spot light in the distance. It's coming from a small tavern. They enter.

A bedraggled man is sitting alone at the bar. The only company present. He
reaches into his coat and pulls out a pointy metallic object with a wooden
handle. Sticking it right into #{calcubot.name}'s face, he pulls his thumb back and the
device clicks.

\"What is that?\" blurts Alouise.

\"A weapon that hasn't been invented for 300 years,\" responds #{calcubot.name}.

\"The machine knows.\" Greg puts away the device. \"You can have the watch.\"

\"Why are you just giving it to us?\"

\"Just take it!!!\" screams the daemon. \"It is cursed.\"

#{calcubot.name} takes the watch from Greg.

OPTION:
(1) Equip Schvaytee's Pocketwatch

#{calcubot.name} and Alouise exit."

main_choice_ch8_op = validate_input_1option

case main_choice_ch8_op
when 1
  puts "#{calcubot.name} takes Schvaytee's Pocketwatch
=> +health

#{calcubot.name} and #{alouise_smyth.name} exit."
end

gets.chomp

# //////////////////////////////
puts "
█▀▀ █░░█ █▀▀█ █▀▀█ ▀▀█▀▀ █▀▀ █▀▀█   ▄▀▀▄
█░░ █▀▀█ █▄▄█ █░░█ ░░█░░ █▀▀ █▄▄▀   ▀▄▄█
▀▀▀ ▀░░▀ ▀░░▀ █▀▀▀ ░░▀░░ ▀▀▀ ▀░▀▀   ░▄▄▀

Isle of Dawn, off Angland Coast

#{calcubot.name} and Alouise are heading back to Gammy's ship.

\"The watch please?\"

#{calcubot.name} turns and Alouise has her staff pointed at in its direction.

\"Why?\"

\"Let's just say I don't enjoy the threat of being burned at the stake.
I figure I'll take my chances in some other time period.\"

#{calcubot.name} is frozen.

\"Now!\"

OPTIONS:
(1) Try talk Alouise into letting you keep the pocketwatch
(2) Fight Alouise"

winner_ch9 = fight(calcubot, ol_gammy_leg)

main_choice_ch9_op = validate_input_2options

case main_choice_ch9_op
when 1
  puts "She relents and lets #{calcubot.name} keep the pocketwatch => +health"
when 2
  if winner_ch9 == true
    puts "#{calcubot.name} wins!".blue.on_yellow.blink

puts "
#{calcubot.name} subdues Alouise and returns home => +health +strength"
  else
    puts "#{calcubot.name} loses but #{alouise_smyth.name} take pity.
    
She allows #{calcubot.name} to return home."
  end
end

gets.chomp
  
# //////////////////////////////
puts "
█▀▀█ █▀▀▄ █▀▀▄   █▀▀ ░▀░ █▀▀▄ █▀▀█ █░░ █░░ █░░█ ░ ░ ░
█▄▄█ █░░█ █░░█   █▀▀ ▀█▀ █░░█ █▄▄█ █░░ █░░ █▄▄█ ▄ ▄ ▄
▀░░▀ ▀░░▀ ▀▀▀░   ▀░░ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀ ▀▀▀ ▄▄▄█ █ █ █

#{calcubot.name} returns home using Schvaytee's Pocketwatch, much to his creator,
Dr. Finklefeinstein's joy.

#{calcubot.name} asks if he can go time travelling again. It would like to study
humanity in other time periods and universes."

gets.chomp

# //////////////////////////////
puts "
▀▀█▀▀ █░░█ █▀▀   █▀▀ █▀▀▄ █▀▀▄
░░█░░ █▀▀█ █▀▀   █▀▀ █░░█ █░░█
░░▀░░ ▀░░▀ ▀▀▀   ▀▀▀ ▀░░▀ ▀▀▀░
"