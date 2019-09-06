argv_copy = ARGV.map{|i| i}
ARGV.clear

if argv_copy.include? "-h"
  puts "
Help information

Min System Requirements:

Windows 7
MacOS 10.6.6
RAM 2GB
x86-64 CPU

Installation:


Game:

On main menu press enter to start new game or \"e\" to exit.

On commencement of new game press 1, 2 or 3 and enter at decision points
to progress or enter to continue story.

Program exits on completion of game."

  exit
end

puts "running my program"