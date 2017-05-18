class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    [first_name, middle_name, last_name].compact.join(' ')
  end
end
