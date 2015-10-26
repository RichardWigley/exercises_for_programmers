### Ex 33 Magic 8 Ball

  - Create a Magic 8 Ball game that prompts for a question and then displays Yes/No/Maybe
  * Choose random answer

#### Demo
  * GUI
  * randomize with sample.
 
#### Challenges
* Implement as GUI
* X use native device libraries to allow you to 'shake' the 8 ball.


### Running the code

Command line: `ruby lib/main.rb`
GUI: `cd gui; shoes main.rb `


#### Pseudo Code

Function Main

  question = Prompt "What's your question?" 
  Answers = [Yes, No, Maybe, Ask again later] 
  answer = Answers.random element
  Output answer 


Demo Ruby Array of String with spaces: %w(Yes No Maybe Ask\ again\ later)
Demo Ruby random element from array: [].sample 
