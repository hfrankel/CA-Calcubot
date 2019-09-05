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

# Main options menu
gets.chomp

puts "OPTIONS:
(1) New Game
(2) Change Difficulty
(3) HELP

Press 1, 2 or 3

"
# op => "options"
# e => "end"

op_page_main_menu_choice = gets.chomp

# //////////////////////////////

chapter1
e_ch1_op = gets.chomp

# //////////////////////////////
  
chapter2

winner = fight(calcubot, gang_member_1)

main_choice_ch2_op = gets.chomp.to_i

case main_choice_ch2_op
when 1
  puts "#{calcubot.name} surrenders peacefully

Suddenly a hidden figure appears. The gang members spot the figure and
immediately flee.

It is the witch #{alouise_smyth.name}"
when 2
  if winner == true
    puts "#{calcubot.name} wins!

It encounters Alouise Smyth, a witch posessing a magical staff."
  else
    puts "#{calcubot.name}"
  end
end

e_ch2_op = gets.chomp

# //////////////////////////////

chapter3

main_choice_ch3_op = gets.chomp.to_i

case main_choice_ch3_op
when 1
  puts "For repairing shelf, #{calcubot.name} has been gifted...

INSERT ITEM HERE!!!!"
when 2
  puts "#{calcubot.name} and #{alouise_smyth.name}"
when 3
  puts "#{calcubot.name} takes item => EQUIP ITEM HERE!!!"
end

e_ch3_op = gets.chomp

# //////////////////////////////

chapter4
e_ch4_op = gets.chomp

# //////////////////////////////

chapter5
e_ch5_op = gets.chomp

# //////////////////////////////

chapter6
e_ch6_op = gets.chomp

# //////////////////////////////

chapter7
e_ch7_op = gets.chomp

# //////////////////////////////

chapter8
e_ch8_op = gets.chomp

# //////////////////////////////

chapter9
e_ch9_op = gets.chomp
  
# //////////////////////////////

chapter10a
e_ch10a_op = gets.chomp

# //////////////////////////////

chapter10b
e_ch10b_op = gets.chomp

# //////////////////////////////