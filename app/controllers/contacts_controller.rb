class ContactsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save

      ContactsMailer.general_message(@contact).deliver_now
      flash[:notice] = 'Votre message a bien été envoyé !'
      redirect_to root_path
      ContactsMailer.validation_message(@contact).deliver_now
    else
      flash[:notice] = "Erreur lors de l'envoi du message. Veuillez réessayer."
      render :new
    end
    @contact.delete
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
