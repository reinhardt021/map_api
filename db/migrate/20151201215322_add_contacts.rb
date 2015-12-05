class AddContacts < ActiveRecord::Migration
  def change
    Contact.create(firstname: 'Reinhardt', lastname: 'C', email: 'reinhardt.c@gmail.com')
    Contact.create(firstname: 'Max', lastname: 'Powers', email: 'max@powers.io')
    Contact.create(firstname: 'Rain', lastname: 'Heart', email: 'rain@heart.com')
    Contact.create(firstname: 'Tom', lastname: 'Jerry', email: 'tom@jerry.ca')
    Contact.create(firstname: 'Dilbert', lastname: 'Work', email: 'dilbert@work.org')
    Contact.create(firstname: 'Don', lastname: 'Burks', email: 'don@burks.com')
    Contact.create(firstname: 'David', lastname: 'VanD', email: 'david@vand.ca')
  end
end
