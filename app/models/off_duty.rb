class OffDuty < ApplicationRecord
  require 'date'
  validates :from_date, :to_date, :days, :mail_to, :reason, presence: true

  belongs_to :user
  
  def self.total_days(from_date, to_date)
    (from_date..to_date).count
  end
end
