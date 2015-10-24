STATES = {
  'ALABAMA'              => 'AL',
  'ARKANSAS'             => 'AR',
  'AMERICAN SAMOA'       => 'AS',
  'ARIZONA'              => 'AZ',
  'CALIFORNIA'           => 'CA',
  'COLORADO'             => 'CO',
  'CONNECTICUT'          => 'CT',
  'DELAWARE'             => 'DE',
  'DISTRICT OF COLUMBIA' => 'DC',
  'FLORIDA'              => 'FL',
  'GEORGIA'              => 'GA',
  'GUAM'                 => 'GU',
  'HAWAII'               => 'HI',
  'IOWA'                 => 'IA',
  'IDAHO'                => 'ID',
  'ILLINOIS'             => 'IL',
  'INDIANA'              => 'IN',
  'KANSAS'               => 'KS',
  'KENTUCKY'             => 'KY',
  'LOUISIANA'            => 'LA',
  'MASSACHUSETTS'        => 'MA',
  'MARYLAND'             => 'MD',
  'MAINE'                => 'ME',
  'MICHIGAN'             => 'MI',
  'MINISOTA'             => 'MN',
  'MISSOURI'             => 'MO',
  'MISSISSIPPI'          => 'MS',
  'MONTANA'              => 'MT',
  'NORTH CAROLINA'       => 'NC',
  'NORTH DAKOTA'         => 'ND',
  'NEBRASKA'             => 'NE',
  'NEW HAMPSHIRE'        => 'NH',
  'NEW JERSEY'           => 'NJ',
  'NEW MEXICO'           => 'NM',
  'NEVADA'               => 'NV',
  'NEW YORK'             => 'NY',
  'OHIO'                 => 'OH',
  'OKLAHOMA'             => 'OK',
  'OREGON'               => 'OR',
  'PENNSYLVANIA'         => 'PA',
  'PUERTO RICO'          => 'PR',
  'RHODE ISLAND'         => 'RI',
  'SOUTH CAROLINA'       => 'SC',
  'SOUTH DAKOTA'         => 'SD',
  'TENNESSEE'            => 'TN',
  'TEXAS'                => 'TX',
  'UTAH'                 => 'UT',
  'VIRGINIA'             => 'VA',
  'VIRGIN ISLANDS'       => 'VI',
  'VERMONT'              => 'VT',
  'WASHINGTON'           => 'WA',
  'WEST VIRGINIA'        => 'WV',
  'WISCONSIN'            => 'WI',
  'WYOMING'              => 'WY'
}

def translate_to_state_code(state_name)
  return :no_translation unless translate_to_state_code?(state_name)

  STATES[state_name]
end

def translate_to_state_code?(state_name)
  STATES[state_name]
end
