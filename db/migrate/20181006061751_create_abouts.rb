class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts, id: :uuid do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.datetime :time

      t.timestamps
    end
  end
end
