#!/usr/local/bin/ruby
# File: scope_demo.rb
#
# Ruby programs are instances of the Object class.
# This codes runs inside an instance of the Object
# class, as we can see in.
puts self.class

# color is in the main scope
student_name = "Joe"

def rename_student(new_name)
 # assign new name to a variable with local scope
 student_name = new_name
end

rename_student('Joseph')

puts student_name # What is the output?

# Now, rewrite the code to use an instance variable
#
@student_name = 'joe'

def rename_student(new_name)
 @student_name = new_name
end

rename_student('Joseph')

puts @student_name # What is the output?

__END__
