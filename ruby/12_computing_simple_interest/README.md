### Ex 12 Computing Simple Interest

Create a program that computers simple interest.

Uses
  * refinements for float and integer

#### Pseudo Code

````
Program Simple Interest
  $principal = VerifiedInput 'Enter the principal:', InputValidation
  $interest_rate = VerifiedInput 'Enter the rate of interest', InputValidation
  $years = VerifiedInput 'Enter the number of years', InputValidation

  OUTPUT $interest_rate, $principal, $years
End

# Information is read and verified
VerifiedInput display_message, error_messages 
  input = nil
  LOOP 
    $input  = Prompt display_message
    $error = error_messages input
    STOP LOOP UNLESS $error
    PRINT $error 
  END LOOP
  RETURN input
End

# Information is displayed and read in
Prompt display_message
  PRINT display_message
  READ input
End 

# Assign any error 
ErrorMessages $input
  SWITCH
    CASE WHEN $input IS empty then 'Input a number please'
    CASE WHEN $input NOT number then 'Input is not a number, please enter a number.'
    CASE WHEN $input < 0 'Number cannot be negative'
    ELSE 'No Errror' 
  End Switch
End

Output $intersest_rate, $principal, $years
  FOR $year OF  0 TO $years -1
    PRINT 'After' + $year + at + $intest_rate + ', the investment will be worth '
      + CalculateSimpleInterest $interest_rate, $pincipal, $year
  End For
End

CalculateSimpleInterest rate, principle, years
  principal * (1 + rate * years)
end

````
