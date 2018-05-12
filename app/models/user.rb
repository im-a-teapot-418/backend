class User < ApplicationRecord
  has_many :checkins

  def full_name
    "#{first_name} #{last_name}"
  end
end
