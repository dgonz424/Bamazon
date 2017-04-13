var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  else {console.log("Connected")}
});

//function at bottom
start();

//series of prompts to determine item being purchased and if order can be fulfilled 
function purchaseProducts () {
          inquirer.prompt([
              {
                name: "productID"
                message: "Please enter the ID of the item you'd like to purchase."
              }
            ]).then(function (answer) {
            console.log("You selected product ID" + answer.productID);

            connection.query('SELECT * FROM products ', function (error, results, fields) {
                if (error) throw error;
                var productID = answer.productID - 1;
                console.log("Product: " + results[productID].product +  " Price: $" + results[productID].price );
                productResults = results[productID].product_name;
                priceResults = results[productID].price;

                inquirer.prompt([
                    {
                        name: "inStock",
                        message: "How many " + productResults + " would you like to purchase?"
                    }
                ]).then(function (answer)
                    {
                    if (results[productID].stock_quantity > answer.inStock)
                    {
                        console.log("Great, your total is $" + priceResults*answer.inStock);
                        purchaseProducts();
                    }
                    else {
                      console.log("Our apologies, we cannot fulfill your order. We don't have that many " + productResults + " available at this time. Please check again later.")
                      purchaseProducts();
                    }
                  });
                });
              });
            }
           }

//load query to begin purchase function
function start () {
  connection.query('SELECT * FROM products', function(error, results, fields) {
              if (error) throw error;
              else {console.log(results)};
              purchaseProducts();
            });
}
