class CreateTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :trades, id: :uuid do |t|
      t.string :name
      t.string :place
      t.boolean :status

      t.timestamps
    end
  end
end
