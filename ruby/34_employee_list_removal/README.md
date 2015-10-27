### Ex 34 Employee List Removal 

  - Create a program that contains a list of employee names. Print out the list
    of names when the program runs the first time.
    * Use an array or list to store the names

#### Demo
  * Module Function - methods in main.rb require self before they can be called. 
  * Removing EOL from every element (simple_file.rb line 15)
 
#### Challenges
  * If a user enters a name that is not found, print out an error message stating
    the name does not exist.
  * Read in the list of employees from a file with each employee on its own line.
  * Write the output to the same file you read in.


### Running the code

Command line: `ruby lib/employee_list_removal.rb`

#### Pseudo Code

````
Function Main

  roll = read_file FILE_NAME
  Output_file roll 

  name = PROMPT_FOR_NAME "Enter an employee name to remove?"
  remove_name roll 
  Output_file roll 

  write_file roll 
End

Function Output roll
  PRINT 'THERE ARE' + roll size + 'employees'
  PRINT roll
End
  
Function READ_IN
  Class SimpleFile(FILE_NAME).READ_IN
End

Function PROMPT_FOR_NAME
  # Meh stanard code
  RETURNS NAME_TO_REMOVE
End

Function AMMEND_LIST $List, $sack
  if $List has $sack
    Remove $sack from $List
  else
    PRINT ERROR 'The name' + $sack + 'does not exist in the employee roster.'
End

Function WRITE_OUT $list
  Class SimpleFile(FILE_NAME).WRITE_OUT $list
End




class SimpleFile
  Initialize FILE_NAME
    @FILE_NAME = FILE_NAME
  End

  Method read_in 
    OPEN FILE @FILE_NAME
  End

  Method write_out $file_information
    WRITE_FILE $file_information
  End
End

````  
