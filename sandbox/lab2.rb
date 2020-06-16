#!/usr/local/bin/ruby
# SCRIPT: hello_world.cgi
# CREATOR: Jeremiah Faria

puts "Content-type: text/html"
puts
puts <<HTML
<!DOCTYPE html>
<html>
	<head>
		<title>1 Hello, world!</title>
	</head>
	<body>
		<h1>Hello, world!</h1>
		<p> This is an example of a Ruby CGI script. It has the following features. </p>
		<ol>
			<li>A shebang line</li>
			<li>A MIME type (<code>text/html</code>)</li>
			<li>A blank line after the Content-type line.</li>
			<li>Some HTML to format the text</li>
		</ol>
	</body>
</html>
HTML

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

#!/usr/local/bin/ruby 
# SCRIPT: form.cgi
# CREATOR: Jeremiah Faria 

require 'cgi' 

cgi = CGI.new 
q = cgi.params
ue = q['user'].empty?
ee = q['email'].empty?
if ue && ee
 n = "Please feel in form to trigger a response" 
else
 u = q['user'][0]
 e = q['email'][0]
 ul = u.length
 el = e.length
 n = ul > 0 && el > 0 ? "Welcome #{u}. It's good to see you again.<br /> May I send many emails to you at your email address: #{e}?" : "It looks like some fields are still empty!"
end

puts "Content-type: text/html" 
puts 
puts <<HTML 
<!DOCTYPE html> 
<html> 
	<head> 
		<title>4 FORMS</title> 
		<style type="text/css"> 

			h1 {color:#c00} 
		</style> 
	</head> 
	<body> 
		<form action="" method="post" accept-charset="utf-8"> 
			<p> 
			<label for="User Name" style="width:100px;float:left">User Name</label> 
			<input type="text" name="user" value="#{u}" id="user"> 
			</p> 
			<p> 
			<label for="email" style="width:100px;float:left">Email</label> 
			<input type="text" name="email" value="#{e}" id="email"> 
			</p>
			<p>
			<input type="submit" value="Continue &rarr;">
			</p> 
		</form>
		#{n}
	</body> 
</html>
HTML