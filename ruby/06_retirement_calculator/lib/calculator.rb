class Calculator
  attr_reader :age, :retirement_age
  def initialize(age:, retirement_age:)
    @age = age
    @retirement_age = retirement_age
  end

  def years_left
    retirement_age - age
  end

  def retire_in(year = Time.now.year)
    year + years_left
  end

  def year(year = Time.now.year)
    year
  end

  def working?
    retirement_age > age
  end
end
