class Response
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def yes?
    downcase == 'y'
  end

  def exit?
    downcase == 'q'
  end

  def downcase
    input.downcase
  end
end
