#!/usr/bin/ruby -w

print "Enter time in seconds to countdown: "
number = gets.to_i

while number > 0
    puts "#{number} second(s)"
    number -= 1
    sleep(1)
end

puts "Finished!"
