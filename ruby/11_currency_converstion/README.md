### Ex 11 Currency Conversion

Program that converts currency - note I have changed the challenge as I believe that it was a typo.

#### Challenges
* Build a dictionary of conversion rates and prompt for the ~~countries~~ currency instead of the rates.
  - Question asks for 'countries' when 'currencies' would make more sense - you exchange on a currency
    not exchange on country. 
* Wire up your application to an external API that provides the current exchange rates.

#### Project Requires
* API Key for openexchangerates.org - 


#### Uses
* format('%.0f', value)
* currency.rb uses mapping of one string to another.

#### TIL

API Calls - example of mocking the request and caching the result
  - See Ruby Tapas 066 Caching an API - caches the response rather than the domain object
    - caching not implemented properly - more for investigation

#### Flow Chart


````
                       (start)
                         |
                         |
         | What currency are you exchanging from? |
                         |
                         |
                    | Read input |
                         |
                         |
   | How many $UNITS_OF_CURRENCY are you exchanging? |
                         |
                         |
                  | Read Input |
                         |
                         |
         | Collect and Process currency rates |
                         |
                         |
   | Output $UNITS of $CURRENCY at exchange rate of |
   |        $EXCHANGE_RATE is $USD of U.S. dollars. |

```

#### Psudeo code

````
Program Currency Conversion
  OUTPUT "Currency Conversion."
  $currency_code = Prompt "What currency are you converting from? Enter 3 code reference: e.g. GBP, USD, INR"

  $currency_name = CONVERT $currency_code TO currency name 

  $units = Prompt "How many $currency_name are you exchanging?"

  $dollars = CONVERT units, $currency_code TO dollar amount


  OUTPUT $units $currency_name at an exchange rate of  CONVERT.exchange rate
  is $dollars U.S. dollars.

````
