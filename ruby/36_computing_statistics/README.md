### Ex 36 Computing Statistics
 - Program prompts for response times from a website in milliseconds until 'done' is entered.
 - The program prints: average time (mean), minimum time, maximum time and the standard deviation.

#### Challenges
  * Functions: mean, max, min and standardDeviation
  * X read input from file - I would read it in and pass an array
    - not done it as would need to organise computing_statistics.rb either
      adding user prompt question or having two scripts a user entery script
      and a data reading script. Meh.

#### Demo
* NaN comparison - a Nan, not a number, is a numeric data type value representing an undefined or 
    unrepresentable value. One NaN != another NaN. Ask if it is a Nan: `(0/0.0).nan? => true`
* Application module
* Nested Module Maths Module within an Exercises module
 
#### TIL
* uninitialized constant Exercises (NameError)
  Before you declare the module `Exercises::Maths` you must already have an Exercises module. 


### Pseudo Code

````

Function INPUT
  $response_times = []

  LOOP
    $entered = VerifiedInput 'Enter a number:'
    break if $entered EQUALS 'Done'
    $response_times ADD $entered
  END LOOP
  RETURN $response_times
End Function


Function NUMBERS_ENTERED $response_times
  PRINT 'NUMBERS:' $response_times JOINED WITH ','
End Function

Function MEAN $numbers
 RETURN SUM $numbers DIVIDE $numbers.LENGTH
End

Function MIN $numbers
  RETURN smallest number
End
  
Function MAX $numbers
  RETURN largest number
End

Function STANDARDDEVIATION $numbers
   $sum_of_squares = SUM FOR EACH
     number - MEAN SQUARED
   End
   $variance = $sum_of_squares / ($numbers.length -1)
   $std_deviation = SQUARE ROOT $variance
End

$response_times = INPUT
NUMBERS_ENTERED $response_times
MEAN $response_times



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


````
