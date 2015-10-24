#
# Is the string a number
#  - not solved in Ruby this is one of the coping methods
#
#  - many of the exercises require this method so I'm putting
#    it in its own file
#

def number?(str)
  !!Integer(str)
rescue ArgumentError, TypeError
  false
end


