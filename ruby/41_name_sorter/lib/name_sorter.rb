
# main
#  - unsorted file, displays ordered with file metrics
#  - unsorted file has a list of names comprising of first and surnames
#      - first names and surnames are swapped
#         First_name, Surname =>  Surname, First_name
#      - Sorting by surname
#
def main
  sorted_lines = File.open(unsorted_names_file).sort

  write_out sorted_names_file,
            collection: sorted_lines,
            line_count: line_count(unsorted_names_file),
            longest_line_length: longest_line_length(unsorted_names_file)
end

def write_out(output, collection:, line_count:, longest_line_length:)
  # write out sorted file
  File.open(output, 'w') do |file|
    file.puts "Total of #{line_count} names"
    file.puts "#{'-' * longest_line_length}"
    file.puts collection
  end
end

# file of unsorted names
def unsorted_names_file
  'data/unsorted_names.txt'
end

# file with sorted names
def sorted_names_file
  'data/sorted_names.text'
end

# line_count
#  - returns the number of lines in the file
#
def line_count(file)
  # line count
  line_count = 0
  File.open(file) { |f| line_count = f.read.count("\n") }
  line_count
end

# max_width
#  - returns the longest line in the file
#
def longest_line_length(file)
  # longest line length
  longest_line_length = 0
  File.open(file) do |names_file|
    longest_line_length = names_file.max_by(&:length).length
  end
  longest_line_length
end

main
