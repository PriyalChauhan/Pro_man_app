class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :projects
  # has_many :reporting_tasks, class_name: "Task", foreign_key: "reporter_id"
  # has_many :assigning_tasks, class_name: "Task", foreign_key: "assignee_id"
end
