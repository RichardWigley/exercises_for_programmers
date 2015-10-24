require 'csv'
require_relative 'parsing_a_data_file/record'
require_relative 'parsing_a_data_file/records'
require_relative 'exercises/ascii_table'

module ParsingADataFile

  # self.main
  #  - main program loop
  #
  def self.main
    records = load_records
    output records
  end

  # load_records
  #  - read records from CSV file
  #
  def self.load_records
    records = []
    CSV.foreach('data/names.csv', headers: %w(Last First Salary)) do |row|
      record = Record.new(*row.fields)
      record.salary = record.salary.to_i
      records << record
    end
    Records.new rows: records
  end

  # self.output(records)
  #  - display the records in an ascii table
  #
  def self.output(records)
    AsciiTable.new(headers: Headers.new(
                              [Header.new('last', width: records.last_max_width),
                               Header.new('First', width: records.first_max_width),
                               Header.new('Salary', width: records.salary_max_width)]),
                   separator: Separator.new(records.sum_max_widths),
                   rows: records.rows.sort.map{|row| [row.last,row.first,row.format_salary]})
      .render
  end

  main
end
