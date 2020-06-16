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
