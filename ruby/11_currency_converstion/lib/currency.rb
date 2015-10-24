# Currency
#  - mapping of currency codes to names
#
class Currency
  # to_name currency_code
  # arg: currency_code - 'USD'
  # returns: the name of the currency
  #
  def to_name(currency_code)
    code_to_name.fetch(currency_code, :missing_currency)
  end

  # to_name? currency_code
  # arg: currency_code - 'USD
  # returns: true if the currency is know, false otherwise
  #
  def to_name?(currency_code)
    :missing_currency != code_to_name.fetch(currency_code, :missing_currency)
  end

  private

  def code_to_name
    {
      'AUD' => 'Australian Dollar',
      'CAD' => 'Canadian Dollar',
      'CNY' => 'Chinese Yuan Renminbi',
      'EUR' => 'Euro',
      'GBP' => 'British Pound',
      'USD' => 'US Dollar'
    }
  end
end
