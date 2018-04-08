class Sound < ApplicationRecord
  belongs_to :user

  has_attached_file :file

  validates_attachment_content_type :file, content_type: /\Aaudio\/.*\z/
  validates :title, :category, :file, presence: true
  validates :title, uniqueness: true

  enum category: { epoque_actuelle: 0, epoque_GL: 1 }

  def url
    "sapin-box.s3.eu-west-3.amazonaws.com#{file.path}"
  end
end
