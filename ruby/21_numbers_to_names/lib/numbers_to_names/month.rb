module NumbersToNames

  ENGLISH_MONTHS = { 1 => 'January', 2 => 'Febuary', 3 => 'March', 4 => 'April', 5 => 'May', 6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 => 'Novemeber', 12 => 'December' }
  SPANISH_MONTHS = { 1 => 'enero', 2 => 'febrero', 3 => 'marzo', 4 => 'abril', 5 => 'mayo', 6 => 'junio', 7 => 'julio', 8 => 'agosto', 9 => 'septiembre', 10 => 'octubre', 11 => 'noviembre', 12 => 'diciembre' }

  # month_names
  #
  # Arguments
  #
  # month_id - the month you require as an integer where 1 is January and
  #   12 is December.
  # language - the language you want the month name in.
  #
  #   month_name(2, language: sp)
  #     => 'febrero'
  #
  def self.month_name(month_id, language: :en)
    { en: ENGLISH_MONTHS, sp: SPANISH_MONTHS }.fetch(language).fetch(month_id)
  end
end
