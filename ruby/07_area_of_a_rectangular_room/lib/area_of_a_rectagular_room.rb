require_relative 'area'
require_relative 'convert'
require_relative 'number'

def prompt(*args)
  print(*args, ' ')
  gets.chomp
end

def abbreviation_to_full(str)
  case str
  when 'f' then 'feet'
  when 'm' then 'meters'
  end
end

select = prompt 'What units do you want to use (f)eet or (m)eters?'
unit = abbreviation_to_full select

inputs = { 'length' => nil, 'width' => nil }
inputs.each do |input, _value|
  loop do
    inputs[input] = prompt "What is the #{input} of the room in #{unit}?"
    break if number?(inputs[input])
    puts "You must enter a number.\n"
  end
end

length_in_feet = inputs['width'].to_f
length_in_feet = Convert.meters_to_feet(inputs['length'].to_f) if unit == 'meters'
width_in_feet  = inputs['length'].to_f
width_in_feet  = Convert.meters_to_feet(inputs['width'].to_f) if unit == 'meters'

area = Area.new length: length_in_feet, width: width_in_feet
puts "You entered dimensions of #{inputs['length']} #{unit}" \
     " by #{inputs['width']} #{unit}."
puts "The area is\n #{area.square_feet.round(3)} square feet\n" \
  " #{Convert.square_feet_to_square_meters(area.square_feet).round(3)}" \
  ' square meters'
