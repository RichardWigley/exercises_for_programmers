### Ex 42 Parsing a data file

Construct a program that reads in the following data file:

````
Ling,Mai,55900
Johnson,Jim,56500
Jones,Aaron,46000
Jones,Chris,34500
Swift,Geoffrey,14200
Xiong,Fong,65000
Zarnecki,Sabrina,51500
````

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

#### TODO:
Test it out on a large file and see how it copes.


#### Pseudo Code

````
Function Main
  records = Function LoadRecords
  headers = Function CreateHeaders records

  table = Table New (headers, records)
  Function Output table
End

Function LoadRecords
  records = New Array
  File Each Row 'File Name' 
    record = Record New (Row Fields)
    records PUSH record
  End
  Records New records
End



Struct Records
  Method Initialize rows, headers
    @rows = Array rows
    @headers = headers
  End

  Method MaxWidths
    [LastMaxWidth, first_max_width, salary_max_width]
  End

  Method LastMaxWidth
    rows ['last'] Maximum 'length' + 1
  End


  Method FirstMaxWidth
    rows ['first'] Maximum 'length' + 1
  End

  Method SalaryMaxWidth
    rows ['salary'] Maximum 'length'
  End
End

Class AsciiTable
  Method Initialize rows, headers
    @rows = rows
    @headers = headers
  End

  Method Output
    @headers call Render
  End
End

Class Header
  Method Initalize heading, width
    @heading = heading
    @width = width
  End
  
  Method Render
    Print @heading WITHIN width
  End
End
````
