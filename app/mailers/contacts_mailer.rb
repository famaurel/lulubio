class ContactsMailer < ApplicationMailer

  def general_message(contact)
    @contact = contact
    mail(:to => "fannymaurel@outlook.com", :subject => "You Have a Message From Your Website")
  end
end
