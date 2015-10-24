# Guest
#  - null object pattern - when credentials does not know the user name
#                          we return this object.
#    - better than returning nil since nil is not interchangeable with
#      Credential - so you have to sprinkle with nil tests to avoid
#      exceptions
#
class RejectionCredential
  def authenticate? plain_password
    false
  end
end
