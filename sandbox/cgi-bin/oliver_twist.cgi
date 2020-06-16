#!/usr/local/bin/ruby 
# SCRIPT: oliver_twist.cgi
# CREATOR: Jeremiah Faria 

n = "oliver_twist.txt"
e = File.exist?(n)
if e
 f = File.new(n,"r")
 s = File.size?(n)
 c = s > 0 ? f.sysread(s) : "File Empty!"
 f.close
else
 c = "File no Bueno!"
end

puts "Content-type: text/html"
puts
puts <<HTML
<!DOCTYPE html> 
<html> 
	<head> 
		<title>2 Oliver Twist</title> 
	</head>
	<body>
		<p>#{c}</p>
	</body>
</html>
HTML
