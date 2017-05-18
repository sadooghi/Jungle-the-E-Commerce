# Project Description
Jungle is an e-commerce web application which allows store owners to update products based on their inventory and also lets customers select a product and pay for their purchase online using their credit card. There are reviews for each product which are written by customers and the average rating is visible on the main page for each product in order to help customers make decisions easily.
## Functional Specifications:
* Payments handled by Stripe API
* Routing method is Restful and there is no extra, unused routes
* When a product has 0 quantity, a sold out badge displays on the product list page.
* Admin users can list and create new categories and add new products to any category
* Admin access requires authorized username and password
* Visitors can go to the registration page from any page in order to create an account and they can sign up for a user account with their first name, last name, E-mail and password.
* E-mails are unique and there can't be two users with the same E-mail address.
* For security purposes, all passwords are encrypted before storing into database.
* Visitors can sign in using their e-mail and password
* Users can log out from any page
* The order page contains items, their image, name, description, quantities ,total payment and the customer's E-mail address.
* After payment succeed, an E-mail will be send to the customer and let them know the items they purchased and their total payment.
* Visitors only have access to see main page and the overall rating for each product. However, logged-in users have access to read reviews and add review to any product they want.
* Each review can only be deleted buy the one who wrote it.
* This application has automated tests that make it easy to scale the product or implement new features.

## Technical Specifications:
* Ruby on Rails
* stripe
* Postgres
* Bcrypt
* RSpec
* Capybara

### Project Screenshots
![picture alt](https://raw.github.com/sadooghi/jungle-rails/master/screenshot/all-products.png "main_page")
![picture alt](https://raw.github.com/sadooghi/jungle-rails/master/screenshot/one_product.png "each_product_page")
![picture alt](https://raw.githubusercontent.com/sadooghi/jungle-rails/master/screenshot/Admin-products.png "admin_page")
