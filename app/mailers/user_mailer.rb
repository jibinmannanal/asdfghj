class UserMailer < ApplicationMailer

  def notification_mail(contact)
    email = contact.email
    @data=contact
    @user=contact.name  unless contact.name.blank?


    mail(:to => email,:cc =>'jibinmannanal@gmail.com', from: 'info@sobabooks.com', :subject => "Your message received, we will contact soon") unless email.blank?
  end
end
