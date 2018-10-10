class Answer < ApplicationRecord
  has_attached_file :pdf, :styles => { :thumb => ["140x140>", :jpg] }


  validates_attachment :pdf,
                        content_type: { content_type: ["application/pdf"] }


end
