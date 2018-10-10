class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners, id: :uuid do |t|
      t.string :title
      t.string :content
      t.boolean :status

      t.timestamps
    end
  end
end
