### Ex 14 Tax Calculator

A Simple program to compute the tax on an order amount.

#### Uses
 - mapping full name to a code

#### Pseudo Code

````
raw_state_code
  raw_state_code if nil is Prompt: 'What is the state?' 
                   convert raw_state_code to Uppercase
End

Tax Calculator
  order_amount = Prompt: 'What is the order amount?' 
  state_code = raw_state_code
  state_code = translate_to_state_code(raw_state_code)
    if translate_to_state_code?(raw_state_code)

  order_tax = Tax Object

  Display "The tax is $ " + if order_tax.tax? then order_tax.tax end
          "The total is $ " + order_tax.total
End

Tax Object
  init
    Initialize amount
    Initialize state

  tax?
    state equals 'WI'?

  tax
    0 if state not equal 'WI'

    (amount * 5.5) ceiling / 100.0
end

````


#### Flow Chart

````

                           ( Start )

                              ||
                              \/
               | Prompt: What is the order amount? |

                              ||
                              \/
                       | Read user input |

                              ||
                              \/
                | Prompt: What is the state ? |

                              ||
                              \/
                       | Read user input |

                              ||
                              \/
                             
                    Yes    /  Is  \   No
 | Charge 5.5% tax |<===  /the User\  ===========
                          \ state  /            ||
        ||                  \ WI? /             ||
        \/                                      ||
                                                ||
 | Output tax |                                 ||
                                                || 
       ||                                       ||
       ||                                       ||
       =============> | Output Total | <=========

````
