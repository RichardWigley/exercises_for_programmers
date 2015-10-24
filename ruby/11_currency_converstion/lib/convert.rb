require_relative 'float'

# Convert
#
#  - conversion between currencies
#    amount_to = amount_from * rate_from
#                -----------------------
#                        rate_to
#
class Convert
  attr_reader :from, :to

  def initialize(from:, to:)
    @from = from
    @to = to
  end

  # transfer amount
  #  returns converted amount rounding any fraction UP to the next penny
  #
  #
  def transfer_amount(amount)
    ((amount * from) / to.to_f).ceil_to(2)
  end

  def exchange_rate
    transfer_amount 100
  end
end
