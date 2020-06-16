#!/usr/local/bin/ruby
# SCRIPT: hitchhikersguide.cgi
# CREATOR: Jeremiah Faria

f = File.new("/users/dputnam/greetings.txt","r").size

puts "Content-type: text/html"
puts
puts <<HTML
<html>
	<head>
		<title>Midterm</title>
	</head>
	<body>
		<h1>#{f}</h1>
	</body>
</html>
HTML
