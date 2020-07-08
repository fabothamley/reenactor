class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  #white listed the variable stripe_card_token that comes in from teh form
  attr_accessor :stripe_card_token
  
  validates :first_name, presence: true
  validates :first_name, length: { minimum: 2 }
  
  validates :last_name, presence: true
  validates :last_name, length: { minimum: 2 }
  
  validates :age, presence: true
  validates :age, numericality: { only_integer: true }
  validates_inclusion_of :age, :in => 18..99
  
  validates :address_line_1, presence: true
  
  validates :address_postcode, presence: true
  validates :address_postcode, length: { minimum: 5 }
  
  
  # save_with_subscription called from
  # /saasapp/app/controllers/users/registrations_controller.rb
  
  def save_with_subscription
    if valid?
      self.stripe_customer_token = Date.today
      self.member_start_date =  Date.today
      self.member_expiry_date =  Date.today + 365
      save!
    end
  end
end
# this function is used in /saasapp/app/controllers/users/registrations_controller.rb
