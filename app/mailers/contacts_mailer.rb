class ContactsMailer < ApplicationMailer

  def general_message(contact)
    @contact = contact
    mail(:to => "lulubio47@gmail.com", :subject => "Message reçu sur lulubio.fr !")
  end
end
