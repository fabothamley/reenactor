class ContactMailer < ActionMailer::Base
  default to: 'fabothamley@live.co.uk'
  def contact_email(name,email,body)
    @name= name
    @email = email
    @body = body
    mail(from:email, subject: 'Message about MBC')
  end
end