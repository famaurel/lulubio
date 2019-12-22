class ContactsMailer < ApplicationMailer

  def general_message(contact)
    @contact = contact
    mail(:to => "lulubio47@gmail.com", :subject => "Message reçu sur lulubio.fr !")
  end

  def validation_message(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Votre message a bien été reçu par Lulubio")
  end
end
