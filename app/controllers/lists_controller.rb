class ListsController < ApplicationController

  def index
    @lists = List.all 
    # implicitly render 'lists/index.html.erb'
  end
end
