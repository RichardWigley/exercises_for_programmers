class Tax
  attr_reader :amount, :state
  def initialize(amount:, state:)
    @amount = amount
    @state = state
  end

  def tax?
    state == 'WI'
  end

  def tax
    return 0 if state != 'WI'

    (amount * 5.5).ceil / 100.0
  end
end
