class User < ApplicationRecord
  rolify
  after_create :assign_default_role
  
  has_many :teams, dependent: :delete_all
  has_many :projects, through: :teams

  validates :avatar, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :daily_statuses
  has_many :off_duties
  has_one_attached :avatar
  has_many :comments

  def assign_default_role
    self.add_role(:employee) if self.roles.blank?
  end

  def to_s
    first_name
  end
  has_many :reporting_tasks, class_name: "Task", foreign_key: "reporter_id"
  has_many :assigning_tasks, class_name: "Task", foreign_key: "assignee_id"

  # has_many :reporting_projects, class_name: "Project", foreign_key: "reporter_id"
  # has_many :assigning_projects, class_name: "Project", foreign_key: "assignee_id"

  
end
