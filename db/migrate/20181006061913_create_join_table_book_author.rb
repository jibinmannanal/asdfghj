class CreateJoinTableBookAuthor < ActiveRecord::Migration[5.2]
  def change
    create_join_table :books, :authors do |t|
      t.uuid :book_id
      t.uuid :author_id
    end
  end
end
