class User < ApplicationRecord
  validates :name, :age, presence: true
  validates :name, length: { minimum: 2 }
  validates :age, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 150 }

  def greet
    return "I am #{self.name}" if self.age <= 12
    "I'm #{self.name}"
  end

  def good_bye
    return 'bye bye' if self.age <= 12
    'BYE BYE'
  end
end
