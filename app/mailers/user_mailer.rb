class UserMailer < ApplicationMailer
  default from: "aleman.gabriel01@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'aleman.gabriel01@gmail.com',
        :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
  	@appname = "Bike Shop"
  	mail( :to => user.email,
  		  :subject => "Welcome to #{@appname}")
  end

  def order_created(user)
    mail( :to => user.email,
        :subject => "Order was created succesfully")
  end




end
