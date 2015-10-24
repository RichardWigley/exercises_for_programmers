### Ex 21 Numbers to Names

Displays months to the end user - in either English or Spanish
  * Use a switch or case statement for this program (removed in challenge)

#### Challenges
  * Use a map or dictionary to remove the switch statement for this program.
  * Support multiple languages. Prompt for the language at the beginning of the program.

#### Demo 
  * A dictionary of numbers => months (month.rb).
  * Nested hash fetching on language & month_id (month.rb).

#### TIL
Nested hashes for alternate string versions

* stop reading if you have not done your own solution

````
ENGLISH = {1 => 'January' .....  12 => 'December' }
SPANISH = {1 => 'enero' ......  12 => 'diciembre' }

def month_name(month_id, language: :en)
  { en: ENGLISH, sp: SPANISH }.fetch(language).fetch(month_id)
end

````
