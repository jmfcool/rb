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
