require 'minitest/autorun'
require_relative '../lib/greeter'

class TestGreeter < Minitest::Test
  def setup
    @greeter = Greeter.new
  end

  def test_ask
    assert_equal 'What is your name?', @greeter.ask
  end

  def test_hail
    with_stdin do |user_input|
      user_input.puts 'Brian'
      assert_equal('Hello Brian, nice to meet you!', @greeter.hail)
    end
  end

  def with_stdin
    stdin = $stdin
    $stdin, write = IO.pipe    # create pipe assigning its "read end" to $stdin
    yield write                # pass pipe's "write end" to block
  ensure
    write.close                # close pipe
    $stdin = stdin             # restore $stdin
  end
end
