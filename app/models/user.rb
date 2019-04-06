class User < ApplicationRecord
  def greet
    return "I am #{self.name}" if self.age <= 12
    "I'm #{self.name}"
  end

  def good_bye
    return 'bye bye' if self.age <= 12
    'BYE BYE'
  end
end
