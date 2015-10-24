module ComputingSimpleInterest

  # Investment
  #  - structure to hold the variables needed for simple interest calculation
  #
  Investment = Struct.new(:principal, :rate, :years) do
    def percent_rate
      rate / 100
    end
  end
end
