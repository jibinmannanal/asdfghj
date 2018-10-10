class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services, id: :uuid do |t|
      t.string :title
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
