### Ex 16 Legal Driving Age

  - Program that asks the user for their age and compare it to the legal driving age of 16.
  * Use a ternary operator.

#### Challenges
  * Demo - Do not accept if less than 0
  * X - instead of hard-coding the driving age in your program logic, research driving ages for 
        various countries and create a lookup table for the driving ages and countries. Prompt for 
        the age, and display, which countries the user can legally drive in.


#### Pseudo Code

````
Program LegalDrivingAge

  $age = Prompt "What is your age?"

  IF $age > 16 
   PRINT 'You are old enough to legally drive.'
  ELSE
   PRINT 'You are not old enough to legally drive.' 
  END
````

#### Flow Chart

````
                           (start)
                              |
                             \|/
                  | Prompt: What is your age? |
                              |
                              |
                             \|/
                      | Read user Input |
                              |
                              |
           Yes              / Is \      No
           -------------- /user old\----------------
           |              \ enough?/               |
           |                \    /                 |
          \|/                                     \|/
 | Print 'You are old enough |     | Print 'You are not old   |
 |  to legally drive'        |     |  enough to legally drive |


````
