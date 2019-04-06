class Blog < ApplicationRecord
  has_many :comments, dependent: :destroy

  def full_content
    "#{self.title} #{self.body}"
  end
end
