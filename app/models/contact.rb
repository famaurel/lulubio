class Contact < ApplicationRecord
  validates :email,
    :presence => :true,
    :format => {
      :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
      :message => "L'adresse mail que vous avez rentrée n'est pas valide."
    }
  validates :message, :presence => :true
  validates :name, :presence => :true
end
