~ User should be able to make a list
~ User should then be able to add items to that list
~ User should be able to navigate many lists, and see each list's items
~ Allow users to CRUD (Create, Read, Update, Delete) a list
  * lists -> has_many items
  * items -> belongs_to a lists

# To get things up and running
  * routes.rb -> root 'site#index' (throws an error 'no controller')
  * Generate controller -> 'rails generate controller (called) site (with an) index (action)'
   ~ rails generate controller index
! We now see that our css code has been applied to the root page

# So we've taken the html code, and made copied it to our layouts/application.html.erb.  Where we replaced the <% yield %> with the html code.  Now our root page has the style we want.  However, at this point it is dead.

# Now we can start programing.  @ 12:50
