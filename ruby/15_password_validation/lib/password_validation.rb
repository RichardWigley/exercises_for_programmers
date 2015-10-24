require 'io/console'
require_relative 'credential'
require_relative 'rejection_credential'

# default for unknown hash key is to return Reject object
credentials = Hash.new { |hash, key| hash[key] = RejectionCredential.new; }
credentials['alice'] = Credential.new plain_password: 'secret'
credentials['bob'] = Credential.new plain_password: 'secret'

def prompt(*args, input_shown: true)
  print(*args, ' ')
  if input_shown
    gets.chomp
  else
    STDIN.noecho(&:gets).chomp
  end
end

user = prompt 'What is the username?'
password = prompt('What is the password?', input_shown: false)

puts ''
if credentials[user].authenticate? password
  puts 'Welcome!'
else
  puts 'I don\'t know you'
end

