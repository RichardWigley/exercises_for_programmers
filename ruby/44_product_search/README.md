### Ex 44 Product Search 

Create a program that takes a product name as input and retrieves the current
price and quantity for that product.
* Use JSON parser
* prompt if no record found.

````
{
  "products" : [
    {"name": "Widget", "price": 25.00, "quantity": 5 },
    {"name": "Thing", "price": 15.00, "quantity": 5 },
    {"name": "Doodad", "price": 5.00, "quantity": 10 }
  ]
}
````

#### Challenges
* Search is case insensitive. 
* When a product is not found, ask if the product should be added. If yes, ask
  for the price and the quantity and save.

#### Demo 
* JSON in and out of a file
* Testing JSON, to_json, in minitest - ignore the string backslashes to escape "
* Prompt recieving validation argument.
* Best practices for the exercises so far.


#### Pseudo Code

````
  Function Main
    PRINT 'Product Searcher (Enter Q to quit)'
    $product_store = ProductStore New FileName
    $product_list = $product_store.read
    $product_list = EventLoop $product_list
    $product_store.write $product_list
  End

  Function EventLoop $product_list
   Loop
      $response = Response.New Prompt 'What is the product name?'
      break IF $response.brakes_loop?
      $product_list = HandleAction $response
    End Loop
    $product_list
  End

  Function HandleAction $product_list, $response
    IF product_list.in_stock? $response.Insenstive
      ProductDisplay.new($product_list.stock($response.Insensitive)).output
    Else
      $add_product? = Prompt 'Should the product be added?'
      $product_list.Add CreateProduct($response.Sensitive)  IF $add_product?
    End
    $product_list
  End

  Function CreateProduct $name
    $price = Prompt 'What is the price?'
    $quantity = Prompt 'What is the quantity?'
    Product.New $name, $price, $quantity
  End


  # ---------------------------------------
 
  # Wraps a user response
  #
  class Response
    Function initialize $input
      @input = $input
    end

    Function Sensitive 
      @input
    End

    Function Exit?
      Insensitive  == 'q'
    End

    Function Insenstive 
      @insensitive.DOWNCASE
    End
  End    

  # ---------------------------------------

  class ProductStore
    Function Initialize $filename
      @file_name = $filename 
    End

    Function Read 
      products = JSON.Parse( IO.read $filename )
      ProductList.new products 
    End

    Function Write $products
      File OPEN $filename
        File.WRITE $products
      End
    End
  End



  # ----------------------------------------

  class ProductList
    Function Initialize products_hash
      @products_hash = products_hash
    End

    Function [ ] product 
      return @products[ product ]
    End

    Function in_stock? key
      returns @products_hash has Key 
        true if present, false otherwise
    End

    Function Add product 
      @products_hash[ product.key ] = product 
    End
  End

  # ----------------------------------------

  class Product
    Function Initialize name, price, quantity
      @name = name
      @price = price
      @quantity = quantity
    End

    Function Key 
      @name.downcase
    End
   End 
   
   class ProductDisplay
    Function Initialize product
      @product = product
    End

    Function Output
      "Name: " + @name + "\nPrice: " + @price + "\nQuantity:" + @quantity
    End
  End
````
