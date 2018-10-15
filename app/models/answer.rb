class Answer < ApplicationRecord
  has_attached_file :pdf


  validates_attachment :pdf,
                        content_type: { content_type: ["application/pdf"] }


end
