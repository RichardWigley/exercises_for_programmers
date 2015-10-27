require_relative 'employee_list_removal/simple_file'
require_relative 'employee_list_removal/employee_list'
require_relative '../../exercises/lib/exercises/prompt'

# EmployeeListRemoval
#  - Program that contains a list of employee names.
#  See Exercises for programmers 34
#
module EmployeeListRemoval
  # self.main
  #  - the program loop
  #
  def self.main
    roll = read_in
    output roll
    amended_roll = amend_list(roll, sack: prompt_for_name)
    write_out amended_roll
    output amended_roll
  end

  # output
  #  - displays the employees information
  #
  def self.output(employees)
    puts "There are #{employees.length} employees:\n"
    puts employees
    puts
  end

  # self.read_in
  #  - read in rows of file
  #
  def self.read_in
    SimpleFile.new(file_name).read_in
  end

  # self.prompt_for_name
  #  - return user input
  #
  def self.prompt_for_name
    prompt('Enter an employee name to remove:', something_entered?)
  end

  # self.amend_list
  #  list - list to amend
  #  sack - element to remove
  #  returns amended list
  #
  def self.amend_list(list, sack:)
    if include?(list, sack: sack)
      list = remove list, sack: sack
    else
      puts "The name #{sack} does not exist in the employee roster."
    end
    list
  end

  # write_out
  #  - write list elements to file
  #
  def self.write_out(list)
    SimpleFile.new(file_name).write_out(list)
  end

  def self.file_name
    'data/employee_list.csv'
  end
  #
  # Start
  main
end
