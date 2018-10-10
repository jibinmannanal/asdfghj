class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers, id: :uuid do |t|
      t.string :title
      t.boolean :status

      t.timestamps
    end
  end
end
