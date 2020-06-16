#!/usr/local/bin/ruby
# SCRIPT: lab4.cgi
# CREATOR: Jeremiah Faria

def analyzer
 swf = File.new("stop_words.txt","r")
 sws = File.size?("stop_words.txt")
 swt = swf.sysread(sws)
 swf.close
 swa = swt.scan(/\w+/)
 d = Dir.new("speeches")
 a = d.collect { |e| "speeches/" + e }
 a.each do |n|
  e = File.exist?(n)
  if (e && (File.ftype(n) == "file"))
   f = File.new(n,"r")
   s = File.size?(n)
   c = s > 0 ? f.sysread(s) : "File Empty!"
   puts "<h1>#{n.sub(/[\.txt]{0,4}$/,'').sub(/^[speeches\/]{0,9}/,'').split('_').join(' ').upcase}</h1>"
   puts "<h2>STATISTICS</h2>"
   puts "Lines: #{c.split(/\n/).length} <br />"
   puts "Characters: #{c.split('').length} <br />"
   puts "Characters (exc. space): #{c.split(' ').join('').length} <br />"
   puts "Words: #{c.split(' ').length} <br />"
   puts "Sentences: #{c.split(/\.|\?|!/).length} <br />"
   puts "Paragraphs: #{c.split(/\n\n/).length} <br />"
   puts "Sentences per Paragraphs: #{c.split(/\.|\?|!/).length / c.split(/\n\n/).length} <br />"
   puts "Words per Sentence: #{c.split(/\w+/).length / c.split(/\.|\?|!/).length} <br />"
   puts "Non-fluff: #{((c.scan(/\w+/) - swa).length.to_f / (c.scan(/\w+/)).length.to_f * 100).round}% <br />"
   puts "<h2>ABSTRACT</h2>"
   a = c.strip.split(/\.|\?|!/)
   a_sorted = a.sort_by { |e| e.length }
   ideal = a_sorted.length / 3
   puts "#{a_sorted.slice(ideal..(ideal + 6)).join('. ')}."
   puts "<h2>THE TEN MOST COMMON WORDS</h2>"
   h = {}
   k = (c.scan(/\w+/) - swa).join(' ').downcase.scan(/\w+/).sort
   kk = k.join(' ').scan(/\w+/) - swa
   gh = kk.group_by { |e| h = e }
   sh = gh.sort_by { |k,v| v.length }.reverse.slice(0..9)
   i = 3
   sh.each do |k,v|
    puts "#{k}<sub>#{v.length}</sub>"
   end
   puts "<br /><br />"
   f.close
  end
 end
end

puts "Content-type: text/html"
puts
puts <<HTML
<html>
	<head>
		<title>Lab 4</title>
	</head>
	<body>
		#{analyzer}
	</body>
</html>
HTML
