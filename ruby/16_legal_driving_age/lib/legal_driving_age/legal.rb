#
# class Legal
#  - object that represents if someone can drive or not on the basis of age
#
class Legal
  LEGAL_DRIVING_AGE = 16
  attr_reader :age
  def initialize(age:)
    @age = age
  end

  # legal?
  # returns true if at that age it is legal to drive
  #         false otherwise
  #
  def legal?
    age >= LEGAL_DRIVING_AGE
  end
end
