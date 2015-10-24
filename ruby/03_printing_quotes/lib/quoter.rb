class Quoter
  attr_reader :actor, :quote
  def initialize(actor:, quote:)
    @actor = actor
    @quote = quote
  end

  def to_s
    actor + ' says, "' + quote + '"'
  end
end
