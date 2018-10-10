class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors, id: :uuid do |t|
      t.string :name
      t.string :occupation
      t.boolean :status
      t.string   :description
      t.string   :qualification
      t.string   :twitter_url
      t.string   :fb_url
      t.string   :linked_in_url
      t.timestamps
    end
  end
end
