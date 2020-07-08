class Users::RegistrationsController < Devise::RegistrationsController
  # extend devise gem default behaviour so that users signing up 
  # with pro account plan id 2
  # save with a  special stripe subscription funtion
  # otherwise signup as usual
  # function save_with_subscription in /saasapp/app/models/user.rb
  #def after_sign_in_path_for(resource)
  #  return redirect_to profile_path(id: current_user.id)
  #end
  def create
    super do |resource|
      logger.debug
      @user.inspect
      self.inspect
      resource.save_with_subscription
      #redirect_to profile_path(id: 63)
    end
  end
end

  #@user = User.find( params[:user_id] )
  #logger.debug
  # require 'date'
  # function save_with_subscription in /saasapp/app/models/user.rb
  # Ensure that we have the user who is filling out form
  #this added 2020/06/14
    # @user = User.find( params[:user_id] )
    # user = User.find( params[:user_id] )
    #@user = User.new( user_params )
  #  if @user.save
  #    logger.debug
  #    flash[:success] = "Profile updated!"
  #    #if ok go to home page
  #    redirect_to root_path
  #    #redirect_to profile_path(id: @user )
  #    #render profile_path(id: @user )
  #  else
  #    #if update failed show the blank form again
  #    render action: :new
  #  end
  #this added 2020/06/14
    
    #super do |resource|
    #  
    #  resource.save_with_subscription
    #end
  #end
  
#  def create
#    super do |resource|
#      if params[:plan]
#        resource.plan_id = params[:plan]
#        if resource.plan_id == 2
#          resource.save_with_subscription
#        else
#          resource.save
#        end
#      end
#    end
#  end
#  private
#  def select_plan
#    unless (params[:plan] == '1' || params[:plan] == '2')
#      flash[:notice] = "Please select a membership plan to sign up."
#      redirect_to root_url
#    end
#  end
#end
  

#whitelist form variables added 2020/06/14

  #private
  #  def user_params
  #    params.require(:user).permit(:email, :password, :first_name, :last_name, :address_line_1, :address_postcode, :age)
  #  end
#end