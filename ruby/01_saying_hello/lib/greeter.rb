class Greeter
  def ask
    'What is your name?'
  end

  def hail
    "Hello #{listen}, nice to meet you!"
  end

  def listen
    gets.chomp
  end
end
