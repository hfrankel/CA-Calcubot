require_relative "./chapter_list/chapter1.rb"
require_relative "./chapter_list/chapter2.rb"
require_relative "./chapter_list/chapter3.rb"
require_relative "./chapter_list/chapter4.rb"
require_relative "./chapter_list/chapter5.rb"
require_relative "./chapter_list/chapter6.rb"
require_relative "./chapter_list/chapter7.rb"
require_relative "./chapter_list/chapter8.rb"
require_relative "./chapter_list/chapter9.rb"
require_relative "./chapter_list/chapter10a.rb"
require_relative "./chapter_list/chapter10b.rb"

require "colorize"

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

gets.chomp

puts "Calcubot encounters Alouise Smyth, a witch posessing a magical staff."

e_ch2_op = gets.chomp



# //////////////////////////////

chapter3
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

case op_page_main_menu_choice
when "1"
  new_game_loop
end

