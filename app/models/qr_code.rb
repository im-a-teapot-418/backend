class QrCode < ApplicationRecord
  belongs_to :facility

  scope :active, -> { where(active: true).order(id: :desc) }

  def make_inactive!
    update!(active: false)
  end
end
