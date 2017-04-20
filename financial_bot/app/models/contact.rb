class Contact < ActiveRecord::Base
  # If any of the form fields are not present,the contact information won't be stored in database
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true

end
