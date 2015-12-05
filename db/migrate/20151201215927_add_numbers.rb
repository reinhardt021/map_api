class AddNumbers < ActiveRecord::Migration
  def change
    Number.create(contact_id: 1, digits: '103-999-9999', number_class: 'mobile')
    Number.create(contact_id: 1, digits: '888-999-9999', number_class: 'home')
    Number.create(contact_id: 1, digits: '999-777-9999', number_class: 'work')
    Number.create(contact_id: 2, digits: '111-999-8383', number_class: 'mobile')
    Number.create(contact_id: 3, digits: '999-111-9999', number_class: 'mobile')
    Number.create(contact_id: 6, digits: '222-999-6565', number_class: 'work')
    Number.create(contact_id: 5, digits: '102-999-9999', number_class: 'mobile')
    Number.create(contact_id: 7, digits: '999-999-6354', number_class: 'home')
    Number.create(contact_id: 4, digits: '903-999-9393', number_class: 'mobile')
    Number.create(contact_id: 5, digits: '999-747-9999', number_class: 'work')
    Number.create(contact_id: 7, digits: '111-939-3333', number_class: 'mobile')
    Number.create(contact_id: 5, digits: '999-365-9999', number_class: 'other')

  end
end
