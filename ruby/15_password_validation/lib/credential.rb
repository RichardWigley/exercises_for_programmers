require 'bcrypt'

class Credential
  attr_reader :password

  def initialize( plain_password:)
    @password = BCrypt::Password.create plain_password
  end

  def authenticate? plain_password
    password == plain_password
  end
end

