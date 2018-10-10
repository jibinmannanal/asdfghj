class AddAttachmentPdfToAnswers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :answers do |t|
      t.attachment :pdf
    end
  end

  def self.down
    remove_attachment :answers, :pdf
  end
end
