### Ex 09 Paint Calculator

  - Program to calculate the gallons of paint needed to paint the ceiling of a room.
    * use a constant to hold the conversion rate
    * ensure that you round UP to the next whole number.


  #### Challenges
  * Implement support for round room, L-shaped room.
  * X Implement a mobile version of this app.

  #### Demo
  constants - paint_calculator/coverage.rb
  return hashes - paint_calculator/input.rb


#### Pseudo code

````
Input
  shape_code = Prompt for '(R)ectangular, (C)ircular and (L)-shaped'
  shape = convert_to_shape(shape_code)
  queries = {}
  queries = queries_to_ask(shape)
  for each query in queries do |query, questioning|
    loop
      questioning.answer = Propt for 'What is the ' + questioning.question
      break if number?(questioning.answer)
      output 'You must enter a number only. Do not use letters.'
    end
  end
  shape, queries (array of structures made of question and answers)
End

Circular
  initialize radius
  area = PI * radius squared
End

Rectangle
  initialize length, width
  area = length * width
End

L-shaped
  initialize length_1, width_1, length_2, width_2
  area = length_1 * width_1 + length_2 * width_2
End

PaintCoverage

  ONE_GALLON_COVERS = 350.0

  gallons_from_area area
    (area / ONE_GALLON_COVERS) Round Up
  End
End

Output area, gallons
  'You will need to purchase' + gallons + 'of'
  'paint to cover' + area + square feet.
End

PaintCalculator

shape, queries = Input
Shape class 'shape' created with hash of queries
area = shape.area
gallons = PaintCoverage gallons_from_area area
output( area, gallons)

````
