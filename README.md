# Food-Inventory-Tracker

### Intro:
  
  - This program was originally designed to help food pantries and distribution centers to track their inventory.
  The main functionality of the program was that the user will be able to view other food pantries inventory
  just in case they are low on inventory themselves. 
  - For example, if food pantry #1 ran out of vegetables to give to its recipients, they would be able to go on the website and check if food pantry #2 has enough vegetables.
  Food pantry #1 would send a request to #2 asking if they could handle a couple more recipients. If the request is accepted, then food pantry #1 would redirect some of its recipients to food pantry #2 so they don't have to spend time with no food.
 
  
### How it works:

  #### When not logged in:
  - the home page has a button that allows the user to lookup food pantries near them.
  #### When logged in: 
  - The user can view their own inventory.
  - When the user clicks on inventory they would be presented with two options: "View inventory" to view their own inventory, or "Users" to view other users inventory
  - They can also add products, delete, show, and edit products.
  - To track a distribution of a product, the user will go to inventory, then click on show After that a counter would show up on the bottom where every plus adds 1 and ever minus subtracts 1 from the total. To avoid updating the page every time, the user would be able to keep track and then once they are done, they would see the number in the box and click on edit to edit it quickly and replace the quantity value with the new value.
  - When clicking on "Users" in the inventory page, the user will be presented with all the users that use the system where they can click on any 
    one of them to view their inventory.
  
  
 ## What you need:
 - Install Ruby and Rails and PostgreSQL.
 - Clone the repository and change your current working directory to the newly created directory
 - Install the project dependencies:
```
$ bundle install
```
 - If you encounter errors, try restarting PostgreSQL and installing additional updates.
 - Set up the database:
```
$ rails db:setup
```
 - Run the application (visit at [localhost:3000]):
```
$ rails server
```
 - Modify code and refresh web pages to see the difference.
