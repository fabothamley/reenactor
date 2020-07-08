class Users::RegistrationsController < Devise::RegistrationsController
  logger.debug
  # extend devise gem default behaviour so that users signing up 
  # with pro account plan id 2
  # save with a  special stripe subscription funtion
  # otherwise signup as usual
  def create
  #@user = User.find( params[:user_id] )
  logger.debug
  # require 'date'
  # function save_with_subscription in /saasapp/app/models/user.rb
  # Ensure that we have the user who is filling out form
  #this added 2020/06/14
    # @user = User.find( params[:user_id] )
    # user = User.find( params[:user_id] )
    @user = User.new( user_params )
    if @user.save
      logger.debug
      flash[:success] = "Profile updated!"
      #if ok go to home page
      redirect_to root_path
      #redirect_to profile_path(id: @user )
      #render profile_path(id: @user )
    else
      #if update failed show the blank form again
      render action: :new
    end
  #this added 2020/06/14
    
    #super do |resource|
    #  
    #  resource.save_with_subscription
    #end
  end

#whitelist form variables added 2020/06/14

  private
    def user_params
      params.require(:user).permit(:email, :password, :first_name, :last_name, :address_line_1, :address_postcode, :age)
    end
end