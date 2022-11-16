class User < ApplicationRecord
  rolify
  after_create :assign_default_role

  validates :avatar, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :daily_statuses
  has_many :off_duties
  has_one_attached :avatar
  has_and_belongs_to_many :projects

  def assign_default_role
    self.add_role(:employee) if self.roles.blank?
  end
  # has_many :reporting_tasks, class_name: "Task", foreign_key: "reporter_id"
  # has_many :assigning_tasks, class_name: "Task", foreign_key: "assignee_id"
end
