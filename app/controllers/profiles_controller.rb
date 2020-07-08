class ProfilesController < ApplicationController
  before_action :only_current_user
  
  # GET to /users/:id
  # the :id comes from the routes table
  # params is a value in the url
  def show
    @user = User.find( params[:id] )
  end
  def edit
    
  end
  
  # check if current user
  def only_current_user
     @user = User.find( params[:id])
     redirect_to(root_url) unless @user == current_user
  end
end