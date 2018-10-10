class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books, id: :uuid do |t|
      t.string :name
      t.string :title
      t.boolean :status
      t.string :isbn
      t.string :price
      t.text :description

      t.timestamps
    end
  end
end
