argv_copy = ARGV.map{|i| i}
ARGV.clear

if argv_copy.include? "-h"
  puts "Help information"
  exit
end

puts "running my program"