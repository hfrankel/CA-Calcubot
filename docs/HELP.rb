argv_copy = ARGV.map{|i| i}
ARGV.clear

if argv_copy.include? "-h"
  puts "
Help information

Min System Requirements:

Operating System - Windows 95 or later, Mac OS X 10 or later
Processor Speed - Pentium 4, 3.2 GHz or Power PC G5, 2.0 GHz
Memory - At least 512Mb
Graphics Card - ATI Radeon 9800 w/ 256 MB video memory
Hard Disk Space - At least 1GB
Internet connection

Game:

On main menu press enter to start new game or \"e\" to exit.

On commencement of new game press 1, 2 or 3 and enter at decision points
to progress or enter to continue story.

Program exits on completion of game."

  exit
end

puts "running my program"