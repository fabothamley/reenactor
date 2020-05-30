class Users::RegistrationsController < Devise::RegistrationsController
  # extend devise gem default behaviour so that users signing up 
  # with pro account plan id 2
  # save witha  special striupe subscription funtion
  # otherwise signup as usual
  def create
    super do |resource|
      resource.save_with_subscription
    end
  end
end
#      super do , just says add to devise funtionality
#      resource is just a user
#
#      if params[:plan]
#        resource.plan_id = params[:plan]
#        if resource.plan_id == 2
#          resource.save_with_subscription
#        else
#          resource.save
#        end
#      end
#
# we just want to save the extra data so removed the extra plan bits
# the function is stored in /saasapp/app/models/user.rb
#