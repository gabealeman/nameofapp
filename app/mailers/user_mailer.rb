class UserMailer < ApplicationMailer
  default from: "aleman.gabriel01@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'aleman.gabriel01@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end
