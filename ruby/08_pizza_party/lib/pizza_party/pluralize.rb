module PizzaParty
  # Attempts to pluralize a singular word unless the count is 1
  #
  def self.pluralize(count, singular, plural: nil)
    plural_name = plural || singular + 's'
    "#{count} #{count == 1 ? singular : plural_name}"
  end
end
