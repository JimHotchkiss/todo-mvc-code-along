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
# Created a repo and first commit
# Updated html from application.html to site/index.html
# Removed some unnecessary features in the html
# Looking to have the 'What needs to be done!' window to render a form

# So, in our html, we've stubbed out some of the functionality that we want.
# Namely, we made some todo list.  
# We added <a> links to them, these will take us to out new-forms
# So, with what we have so far, stubbed out in our html, we should be able to create a list, and then click-on the list to see the details.

# So, now we can start thinking about routes, controller and action
LinkController
  * index
    ~ See all the lists
    ~ and is doubling as the #new action in that it is presenting the user with a form to create a new list
! So, we now have this stuff stubbed out, and we are now talking about making controllers and actions
! We need to first address the other bookend -> the database
# So, I'm going to need both a model and controller, and to do this I need a 'resource'.  
> rails generate resource list name
# This is bad-ass-shit!  
  * This created a migration called lists, with a column called name.
  * This also stubbed out test folders
  * This also made a controller called lists_controller.rb
  * This made a views/lists folder
  * And in routes.rb a resources :lists
