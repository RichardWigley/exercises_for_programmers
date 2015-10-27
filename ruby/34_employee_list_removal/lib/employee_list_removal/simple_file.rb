module EmployeeListRemoval
  # SimpleFile
  #  - interface a file as an array
  #    - reads in an array and writes out an array
  #
  class SimpleFile
    attr_reader :file_name
    def initialize(file_name)
      @file_name = file_name
    end

    # read_in
    #   - returns the file as an array
    #
    def read_in
      File.foreach(file_name).map(&:chomp)
    end

    # write_out
    # Args
    #  - write out rows into file
    #
    def write_out(rows)
      File.open(file_name, 'w') do |f|
        f.puts rows
      end
    end
  end
end
