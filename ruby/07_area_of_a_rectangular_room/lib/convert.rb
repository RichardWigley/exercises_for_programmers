class Convert
  METERS_TO_FEET = 3.280_839_9
  FEET_SQUARED_TO_METERS_SQUARED = 0.09290304

  def self.meters_to_feet(meters)
    meters * METERS_TO_FEET
  end

  def self.square_feet_to_square_meters(meters_squared)
    meters_squared * FEET_SQUARED_TO_METERS_SQUARED
  end
end
