class CharCount
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def something_said?
    input.length.nonzero?
  end

  def length
    input.length
  end
end
