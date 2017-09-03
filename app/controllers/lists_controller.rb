class ListsController < ApplicationController

  def index
    @lists = List.all
    # raise @lists.inspect # was the controller able to get the lists from the DB?
    # This raises an error, if this list object if found
    # implicitly render 'lists/index.html.erb'
  end
end
