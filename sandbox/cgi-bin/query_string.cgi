#!/usr/local/bin/ruby 
# SCRIPT: query_string.cgi
# CREATOR: Jeremiah Faria

require 'cgi' 

cgi = CGI.new
q = cgi.params
if q['color'].empty? 
 b = 'blue' 
 c = 'gold' 
else 
 c = q['color'][0]
 b = q['background'][0]
end 

puts "Content-type: text/html" 
puts 
puts <<HTML 
<!DOCTYPE html> 
<html> 
	<head> 
		<title>3 QUERY_STRING</title> 
		<style type="text/css"> 

			body { background-color: #{b}; color: #{c}; width: 800px; margin: 2em auto; padding: 2em; font-family: Helvetica,Arial,Verdana,sans-serif; font-size: 18px; } 
			h1 { color: #c00 }
			a { color: cyan; } 

		</style>
	</head> 
	<body>
		<h1>QUERY_STRING EXAMPLE</h1>
		<p> This is an example of a Ruby CGI script that can process a request's QUERY_STRING. The links below each have a QUERY_STRING encoded. When a user clicks on a link, the browser submits the QUERY_STRING. </p> 
		<p><a href="?color=red&background=orange">RED/ORANGE</a></p>
		<p><a href="?color=blue&background=gray">BLUE/GRAY</a></p>
		<p><a href="?color=lightgreen&background=black">GREEN/BLACK</a></p>
		<p><a href="?color=gold&background=blue">GOLD/BLUE</a></p>
	</body>
</html>
HTML
