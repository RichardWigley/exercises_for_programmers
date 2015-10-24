## Exercises for Programmers
* In general
  - Separate input, from processing, from output.
  - Convert any strings of numerical chars into numerics before using them.
  - Data should be acceptable before continuing - proceed to re-ask.
  - 'X' before a challenge means that the challenge was refused

### Ex 01 Saying Hello
  - Create a program that prompts for your name and prints a greeting using your name.
  #### Challenges
  * Version of the program without variables
  * X Version of the program that displays different greetings for different people.


### Ex 02 Counting the Number of Characters
  - Program that prompts for an input string and displays.
    * Demo - print(*args, ' ') - adds a space between the question and the user input.
  * TIL - loop do / break / end - is idiomatic way of creating an infinite loop
  #### Challenges
  * Require the user enters nothing
  * X Implement this program using a GUI and update the char counter every time a key is pressed.


### Ex03 Printing Quotes
  - Program that prompts fora a quote and an author.
  * Single output statement; use string-escaping techniques for quotes.
  * Do not use string interpolation.
  #### Challenge
  * X Modify this program so that instead of prompting for quotes from the user, you create a structure that
      holds quotes and their associated attributions and then display all the quotes using the formatin the
      example.


### Ex 04 Mad Lib
  - Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and
    injects those into a story that you create.
  * Use a single output statement for this program
  * Use string interpolation.
  #### Challenge
    - X Add more inputs to the program to expand the story.
      - refused because it seemed harder English than programming problem.
      - I'm not sure how they decide to use what grammar in the 'silly' outputs.
    - X Implement a branching story
      - Interesting but not sure what they want.


### Ex 05 Simple Math
  - Write a program that prompts for two numbers and prints output calculations.
  * Generate the single output statement with line breaks in the appropriate spots.
  #### Challenges
  * Requires positive numeric.
  * X Implement this program as a GUI program that automatically updates the values when any value changes.

  - Demo- separates the complex string validation (validation_message_for_answer) from the io (prompt code)
  - TIL - Ruby has no core way of validating if a string will convert to a number.


### Ex 06 Retirement Calculator
  - Program that determines how many years you have left until retirement and the year you can retire.
  * Don't hard-cde the current year into your program. Get it from teh system time via your programming lang.
  #### Challenges
  * Handle situations where the program returns a negative number by stating the user can already retire.


### Ex 07 Area of a Rectangular Room
  - Program to calculate the area of a room.
  * Use a constant to hold the conversion factor.
  #### Challenges
  * Create a new version that allows you to choose feet or meters for you inputs.
  * X Implement as GUI.


### Ex 08 Pizza Party
  - Program to evenly divide pizza.
  #### Challenges
  * Alter the output so it handles pluralization
  * X Variation of the program that prompts for the number of people and the number of pieces each person
    wants, and calculates how many full pizzas you need to purchase.
  #### Demo
  * Struct Questioning - for matching questions and user input answers
  * Testing a module method (test_pluralize testing PizzaParty.pluralize)


### Ex 09 Paint Calculator
  - Program to calculate the gallons of paint needed to paint the ceiling of a room.
  * use a constant to hold the conversion rate
  * ensure that you round UP to the next whole number.
  #### Challenges
  * Implement support for round room, L-shaped room.
  * X Implement a mobile version of this app.


### Ex 10 Self-Checkout
  - Simple self-checkout system. Sum up items and add tax.
  * Keep input, processing, output separate.
  * Input to numerical data.
  #### Challenges
  * Allow indeterminate number of items can be entered.
  - TIL - Float::INFINITY - if you need an infinite loop.
  #### Demo
    - Format string as money (also, Ex12) 
     - Kernal.format('%.2f', my_variable)


### Ex 11 Currency Conversion
  - Program that converts currency (note changed as think typo)
   #### Challenges
   * Build a dictionary of conversion rates and prompt for the ~~countries~~ currency instead of the rates.
  - Question asks for 'countries' when 'currencies' would make more sense - you exchange on a currency
    not exchange on country. 
   * Wire up your application to an external API that provides the current exchange rates.

   * Project Requires - API Key for openexchangerates.org
   #### Demo
   * format('%.0f', value)
   * currency.rb uses mapping of one string to another.
   #### TIL
   * API Calls - example of mocking the request and caching the result
      - See Ruby Tapas 066 Caching an API - caches the response rather than the domain object
      - caching not implemented properly - more for investigation


### Ex 12 Computing Simple Interest
  - Program that computers simple interest.
  #### Challenges
  * In addition to printing out the final amount, print out the amount at the end of the year.
  #### Demo 
  * refinements for float and integer
  * fractions of a cent are rounded up to the next penny (also, Ex14).


### Ex 14 Tax Calculator
  - Program to compute the tax on an order amount.
  * Implement using IF statement, not an ELSE
  #### Challenges
  * Allow the user to enter a state abbreviation in upper, lower, or mixed case.
  * Also allow the user to enter the state's full name in upper, lower or mixed case.
  #### Demo
  * mapping string to code


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


### Ex 16 Legal Driving Age
  - Program that asks the user for their age and compare it to the legal driving age of 16.
  * Use a ternary operator.
  #### Challenges
  * X - instead of hard-coding the driving age in your program logic, research driving ages for 
        various countries and create a lookup table for the driving ages and countries. Prompt for 
        the age, and display, which countries the user can legally drive in.
  #### Demo
  * Do not accept if less than 0


### Ex 21 Numbers to Names
  - Displays months to the end user - in either English or Spanish
  * Use a switch or case statement for this program (removed in challenge)
  #### Challenges
  * Use a map or dictionary to remove the switch statement for this program.
  * Support multiple languages. Prompt for the language at the beginning of the program.
  #### Demo 
  * A dictionary of numbers => months (month.rb)
  * Nested hash fetching on language & month_id (month.rb).
  * TIL - Nested hashes for alternate string versions


### Ex 33 Magic 8 Ball
  - Create a Magic 8 Ball game that prompts for a question and then displays Yes/No/Maybe
  * Choose random answer
  #### Challenges
  * Implement as GUI
  * X use native device libraries to allow you to 'shake' the 8 ball.
  #### Demo
  * GUI
  * randomize with sample.

### Ex 34 Employee List Removal 

  - Create a program that contains a list of employee names. Print out the list
    of names when the program runs the first time.
    * Use an array or list to store the names
    #### Challenges
    * If a user enters a name that is not found, print out an error message stating
      the name does not exist.
    * Read in the list of employees from a file with each employee on its own line.
    * Write the output to the same file you read in.
    #### Demo
    * Module Function - methods in main.rb require self before they can be called. 
    * Removing EOL from every element (simple_file.rb line 15)
    * Reading and Writing to file with an array

### Ex 36 Computing Statistics
 - Program prompts for response times from a website in milliseconds until 'done' is entered.
 - The program prints: average time (mean), minimum time, maximum time and the standard deviation.

#### Challenges
  * Functions: mean, max, min and standardDeviation
  * X read input from file - I would read it in and pass an array

#### Demo
* NaN comparison - a Nan, not a number, is a numeric data type value representing an undefined or 
    unrepresentable value. One NaN != another NaN. Ask if it is a Nan: `(0/0.0).nan? => true`
* Application module
* Nested Module Maths Module within an Exercises module
 
#### TIL
* uninitialized constant Exercises (NameError)
  Before you declare the module `Exercises::Maths` you must already have an Exercises module. 


### Ex 41 Name Sorter
 - Program that reads in the following list of names
  #### Challenges
  * Implement the program by reading in the names from the user, one at a time, and printing out
    the sorted results to a file.
  * Use the program to sort data from a large data set and see how well it performs.
  * X Implement this program in a functional programming language and compare the programs.
  #### Demo 
    * File open
    * max_by
    * sort

  #### TIL
  - Number of lines in a file: `File.open(unsorted_names) { |f| line_count = f.read.count("\n")}i`
  - longest line in the file 
  - sort lines in a file


### Ex 42 Parsing a data file
 - Construct a program that reads in the following data file (see specific question readme.)

#### Challenges
* Format the salary as currency with dollar signs and commas.
* Sort the results by salary from highest to lowest.
* Rework you program to use a CSV parsing library and compare the results.

#### Demo 
* Struct with instance methods
* File.foreach & CSV.foreach
  - which streams the file's rows rather than reading them in all at once.
  - however, it is loading it into records so memory will run out. 
    if this was a longer file I would try getting the max lengths and then
    reaad in and write out as I went.
* Sorting on none-default column (salary) - see record.rb
* Ascii table - attempting to use it on other projects 
  - nested data structure - headers, header, records, record


#### Does not use
* File.open - which opens the file and reads everthing into memory (problem for large fields)

