class Event < ActiveRecord::Base
  has_many :participants

  has_attached_file :image,
    styles: { medium: "600x200#" }

  validates_attachment :image,
    content_type: {
      content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    }
end
