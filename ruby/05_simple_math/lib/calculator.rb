class Calculator
  attr_reader :first, :second
  def initialize(first:, second:)
    @first = first
    @second = second
  end

  def add
    "#{first} + #{second} = #{first + second}"
  end

  def subtract
    "#{first} - #{second} = #{first - second}"
  end

  def multiply
    "#{first} * #{second} = #{first * second}"
  end

  def divide
    "#{first} / #{second} = #{first / second}"
  end
end
