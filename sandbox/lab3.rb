#!/usr/local/bin/ruby

the_string = <<HERE
               this string has leading space and too    MANY tabs and sPaCes betweenX
   the indiVidual Words in each Line.X
  each Line ends with a accidentally  aDDED  X.X
            in this lab you wilL WRITE code that "sAnITizES" this string by normalizingX
   ("normalizing" means   capitalizing sentences   and setting otherX
  characters to lower case)     and removes in       the extra spaces between WOrds.X
HERE

s = the_string.split('')

a = s.first(s.length / 3)

b = s.last(s.length - (s.length / 3))

c = a & b

d = a - b

e = b - a

f = "a: \"" + a.at(-1) + "\"<br /> b: \"" + b.at(-1) + "\""

g = "a: \"" + a.at(0) + "\"<br /> b: \"" + b.at(0) + "\""

h = b.join('').split(' ').join('').upcase.split('')

ii = Array.new(a)

i = ii.insert(100,h)

j = i.join('').split(' ').join('').split('')

k = j.collect { |e| e + "!"}

l = Array.new(k)

m = l.pop

n = Array.new(l)

o = n.insert(0,m)

p = o.select { |e| e =~ /^[A-Z]/  }

puts "Content-type: text/html"
puts
puts <<HTML
<html>
	<head>
		<title>Lab 3</title>
	</head>
	<body>
		<h1>Lab 3</h1>
		<p>#{s.inspect} #{s.length}</p>
		<h2>1. Create two array by splitting the array into two parts.</h2>
		<h3>1. Part one will be contain the first 1/3 of the original array.</h3>
		<p>#{a.inspect} #{a.length}</p>
		<h3>2. Part two will contain the rest.</h3>
		<p>#{b.inspect} #{b.length}</p>
		<h2>2.For the following exercises print labels to identify the problem being solved.</h2>
		<p>NA</p>
		<h2>3. Print the contents of part one.</h2>
		<p>#{a.inspect}</p>
		<h2>4. Print the contents of part two.</h2>
		<p>#{b.inspect}</p>
		<h2>5. Print the set of elements common to both part one and part two, with no duplicates.</h2>
		<p>#{c.inspect}</p>
		<h2>6. Print the difference between part one and part two.</h2>
		<p>#{d.inspect}</p>
		<h2>7. Print the difference between part two and part one.</h2>
		<p>#{e.inspect}</p>
		<h2>8. Print in double-quotes the elements at the end of both parts one and two using the at() method and a negative index.</h2>
		<p>#{f}</p>
		<h2>9. Print in double-quotes the first elements of part one and two. Do not use something like a[0]. FInd another method that will return the first element.</h2>
		<p>#{g}</p>
		<h2>10. 1) Upper case part two and 2) remove all the spaces, then 3) insert it into part one at index 100 to create a single array. We will use the single array for the remainder of these exercises. Display the new array.</h2>
		<p>#{i.inspect}</p>
		<h2>11. Flatten the new single array and remove all of the white space. Display it.</h2>
		<p>#{j.inspect}</p>
		<h2>12. Using Array#collect!, add an exclamation point ("!") to each element of the flattened array. Display the result</h2>
		<p>#{k.inspect}</p>
		<h2>13. Pop the last element off the array. Print the element and what's left of the array.</h2>
		<p>#{m} <br />#{l.inspect} </p>
		<h2>14. Insert the element popped off in #13 into position 0 (front) of the array. Display the result.</h2>
		<p>#{o.inspect}</p>
		<h2>15. Finally using Array#select!, remove all of the elements that contain non-uppercase letters. Display the result.</h2>
		<p>#{p.inspect}</p>
	</body>
</html>
HTML
