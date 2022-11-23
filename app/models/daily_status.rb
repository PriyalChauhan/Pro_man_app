class DailyStatus < ApplicationRecord
  validates :email, :status_date, :project, :working_hours, :status, presence: true

  belongs_to :user
  has_many :statuses
  accepts_nested_attributes_for :statuses, reject_if: :all_blank, allow_destroy: true

  #has_many :tasks
  #accepts_nested_attributes_for :tasks
end
