require_relative '../test_helper'
require_relative '../../lib/exercises/ascii_table'

describe AsciiTable do
  it 'holds the rows' do
    ascii = AsciiTable.new(rows: [[1, 2, 3], [4, 5, 6]])
    ascii.rows.must_equal [[1, 2, 3], [4, 5, 6]]
  end

  it 'renders the table' do
    ascii = AsciiTable.new(headers: Headers.new([Header.new('first', width: 6),
                                                 Header.new('last', width: 6)]),
                           rows: [[1, 2], [4, 5]])
    proc { ascii.render }.must_output "first last  \n1     2     \n4     5     \n"
  end

  it 'renders a separator' do
    ascii = AsciiTable.new(headers: Headers.new([Header.new('first', width: 6),
                                                 Header.new('last', width: 6)]),
                           separator: Separator.new(12),
                           rows: [[1, 2]])
    proc { ascii.render }.must_output "first last  \n------------\n1     2     \n"
  end
end
