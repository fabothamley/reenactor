class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:stripe_card_token, :email, :password, :password_confirmation,:first_name, :last_name, 
    :address_line_1, :address_line_2, :address_line_3, :address_town, :address_county,:address_postcode, :age, :member_start_date, :member_expiry_date) }
  end
end
