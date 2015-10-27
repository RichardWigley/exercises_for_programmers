require 'byebug'

# Wrapper around enumerable calls
#  - a constraint was that I had to use an array.
#
#
module EmployeeListRemoval
  # self.include? list, sack:
  #  - is sack in the list?
  #  Args
  #    - list - an enumerable of employee elements
  #    - sack the employee we are interested in know is in list
  #  returns true if found, false otherwise
  #
  def self.include?(list, sack:)
    list.detect { |employee| employee == sack }
  end

  # self.remove
  #  Arg
  #  list - the list of employees
  #  sack - the employee to remove from the list
  #  - method to remove an element
  #    I would have an object / data structure to manage this but
  #    constraint is for an array
  #
  def self.remove(list, sack:)
    list.reject { |employee| employee == sack }
  end
end
