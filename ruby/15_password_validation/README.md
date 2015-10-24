### Ex 15 Password Validation 

  - Program to validate user login credentials

#### Challenges
  * Investigate how you can prevent the password from being displayed on the screen in clear text when typed.
  * Create a map of usernames and passwords and ensure the username and password combinations match.
  * Encode the passwords using Bcrypt and store the hashes in the map instead of the clear-text passwords.

#### Demo 
  * BCrypt
  * Null Object Pattern for credential / RejectionCredential
         - Avoids using nil to mean user unknown.
  * Default hash for missing key
  * Hiding user typed text `STDIN.noecho(&:gets).chomp`
  
#### TIL
 * BCrypt - you compare, ==,  BCrypted password with plan text password


#### Pseudo Code

````
Credentials
  has username and value of Credential
End

Credential
  Initialize username, plain_password
    @username = username
    @password = BCrypt password create (plain_password)
  End

  authenticate? plain_password
    @password equals Bcrypt password create (plain_password)
  End
End


Password Validation
  user = Prompt 'What is the username?'
  plain_password = Prompt 'What is the password?' with No Echo

  credential = Credentials find user
  valid = false
  valid = credential.authenticate? plain_password

  if valid
    output 'Welcome!'
  else
    output 'I don\'t know you.'
  end
End

````

Flow Diagram

                            (Start)

                              ||
                              \/

                  | Prompt: What is your username? |

                              ||
                              \/
                       | Read User Input |

                              ||
                              \/
                   | Prompt: What is the password? |

                              ||
                              \/
                       | Read User Input |

                              ||
                              \/
            Yes             / Is the \           No
            -------------- / password \ -----------
            |              \ correct  /           |
            |               \        /            |
            |                                     |
            \/                                   \/
  | Output: Welcome |             | Output: I don't know you. |
