#!/usr/bin/ruby
the_string = <<HERE 
               this string has leading space and too    MANY tabs and sPaCes betweenX
	          the indiVidual Words in each Line.X
		    each Line ends with a accidentally  aDDED  X.X
		                in this lab you wilL WRITE code that "sAnITizES" this string by normalizingX
				   ("normalizing" means   capitalizing sentences   and setting otherX
				     characters to lower case)     and removes in       the extra spaces between WOrds.X
HERE

s = the_string
x = s.gsub(/\s+/,' ').sub(/^\s?/,'')
y = s.split(/\n/)

puts "5.1.1 Squeeze"
puts s.squeeze

puts "\n5.1.2 Downcase"
puts x.downcase

puts "\n5.1.3 Upcase"
puts x.upcase

puts "\n5.1.4 Capitalize"
y.each { |e| puts e.gsub(/\s+/,' ').sub(/^\s?/,'').capitalize  }

puts "\n5.1.5 Removing The Ending 'X'"
y.each { |e| puts e.gsub(/\s+/,' ').sub(/^\s?/,'').sub(/[X]?$/,'') }

puts "\n5.1.6 Each_byte"
s.each_byte { |e| print e.chr, "," , e, ",", "0x#{'%02x' % e}",  "\n" }

puts "\n5.1.7 Split"
puts x.split(/\s+/).inspect

puts "\n5.1.8 Crypt"
puts s.crypt("$6$salt")

puts "\n5.1.9 Replace The Contents Of A String Object"
e = x[0..99].strip.reverse.squeeze.upcase
f = x.sub(/^.{0,99}/,e)
puts f

puts "\n5.1.10 Inspect"
puts f.inspect
