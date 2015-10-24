module ComputingSimpleInterest
  # calculate_simple_interest
  #   - question requested this
  #
  def self.calculate_simple_interest(principal:, rate:, years:)
    principal * (1 + rate * years)
  end
end
