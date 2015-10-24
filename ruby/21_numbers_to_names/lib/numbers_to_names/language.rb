module NumbersToNames

  # language_code
  #   Argument
  #
  #   language - the character representing the language you want
  #   returns - the language code of the language argument.
  #
  def self.language_code(language)
    { 'E' => :en, 'S' => :sp }.fetch(language)
  end
end
