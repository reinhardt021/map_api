class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.integer :contact_id
      t.string :digits
      t.string :number_class
      t.timestamps
    end
  end
end
