class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    # raise @lists.inspect # was the controller able to get the lists from the DB?
    # This raises an error, if this list object if found
    # implicitly render 'lists/index.html.erb'
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.name = params[:list][:name]
    @list.save
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

end
