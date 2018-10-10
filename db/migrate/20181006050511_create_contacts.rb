class CreateContacts < ActiveRecord::Migration[5.2]
  def change

    create_table :contacts, id: :uuid  do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message
      t.timestamps
    end
  end
end
