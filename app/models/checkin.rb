class Checkin < ApplicationRecord
  belongs_to :user
  belongs_to :facility

  def human_date
    created_at.to_formatted_s(:short)
  end
end
