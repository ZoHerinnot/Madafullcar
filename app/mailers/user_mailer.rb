class UserMailer < ApplicationMailer
  default from: 'madafullcar.mg'
  
  def welcome_email(user)
    @user = user 
    @url  = 'https://madafulcar.herokuapp.com/'
    mail(to: @user.email, subject: 'Bienvenue chez Madafullcar') 
  end

end