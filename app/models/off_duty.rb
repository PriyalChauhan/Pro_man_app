class OffDuty < ApplicationRecord
  require 'date'
  validates :from_date, :to_date, :days, :mail_to, :reason, presence: true

  belongs_to :user
end
