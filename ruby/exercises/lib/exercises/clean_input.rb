require 'byebug'

# CleanInput
#  - return input and cope with error conditions
#
class CleanInput
  attr_accessor :quiz, :certify, :type
  def initialize(quiz, certify, type: :to_s)
    @input = :nothing_set
    @quiz = quiz
    @certify = certify
    @type = type
  end

  def input
    @input.send(type)
  end

  # get
  #  - prompts and return input message providing it does not trigger an error
  #    initializes @input to the string set by the user
  #
  def get
    response = prompt quiz
    error = nil
    certify.each do |(message, predicate)|
      result = predicate.call response
      break if result && message == :break
      error = message if result
    end

    if error
      puts error
      puts
    else
      @input = response
    end
    error
  end

  # get_until
  #  - calls get until we no longer return an error
  #
  def get_until
    error = nil
    loop do
      error = get
      break unless error
    end
    error
  end

  def response?
    @input != :nothing_set
  end

  def to_s
    input
  end

  private

  # prompt
  # Display a message to the user and returns a line of input.
  # returns - characters the next line of the I/O stream
  #
  def prompt(*quiz)
    print(*quiz, ' ')
    gets.chomp
  end
end
