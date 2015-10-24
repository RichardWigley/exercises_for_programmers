### Ex 41 Name Sorter

 - Program that reads in the following list of names

#### Challenges
* Implement the program by reading in the names from the user, one at a time, and printing out
  the sorted results to a file.
* Use the program to sort data from a large data set and see how well it performs.
* X Implement this program in a functional programming language and compare the programs.

#### Demo 
* File open
* max_by
* sort

#### TIL
  - Number of lines in a file: 
   `File.open(unsorted_names) { |f| line_count = f.read.count("\n")}i`
  - longest line in the file 

  ````
    File.open(unsorted_names) do |names_file|
      longest_line_length = names_file.max_by(&:length).length
    end
  ````
  - sort lines in a file
  `sorted_lines = File.open(unsorted_names).sort`

#### Pseudo Code

````
$line_count = Open file and count new lines

$longest_line_length = 0
file = OPEN FILE 'unsorted file' LOOP
    $longest_line_length = longest line length
  End loop
Close File

$sorted_lines = nil
file = OPEN FILE 'unsorted file' Loop
    $sorted_lines = file lines sorted
  End Loop
Close File

OPEN FILE 'sorted file'
  PRINT 'Total of ' + $line_count + ' names'
  PRINT '-' * $longest_line_length
  PRINT $sorted_lines
CLOSE file

````
