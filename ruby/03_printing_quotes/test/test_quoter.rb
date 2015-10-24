require 'test_helper'
require 'quoter'

describe Quoter do
  it 'converts to string' do
    quoter = Quoter.new actor: 'nim', quote: 'help'

    quoter.to_s.must_equal 'nim says, "help"'
  end

  it 'handles quote with a single quote' do
    quoter = Quoter.new actor: 'arbitary', quote: "single'quote"

    quoter.to_s.must_equal 'arbitary says, "single\'quote"'
  end
end
