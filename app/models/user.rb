class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #white listed the variable stripe_card_token that comes in from teh form
  attr_accessor :stripe_card_token
 
  def save_with_subscription
    if valid?
      # this line of code charges the card using the customer token
      require 'stripe'
      # Stripe.api_key = 'sk_test_EhMjnvCA9nnNpudZo0DE6YKH00syis0v2L'
      # Stripe.api_key = stripe-api-key
      

      # `source` is obtained with Stripe.js; see https://stripe.com/docs/payments/accept-a-payment-charges#web-create-token
      customer = Stripe::Charge.create({
        amount: 40000,
        currency: 'gbp',
        source: 'tok_amex',
        description: 'My First Test Charge (created for API docs)',
      })
      
      # customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end
end
# this function is used in /saasapp/app/controllers/users/registrations_controller.rb
