class Task < ApplicationRecord
  validates :title, :status, presence: true

  has_many_attached :documents
  belongs_to :project
  belongs_to :reporter, foreign_key: :reporter_id, class_name: "User"
  belongs_to :assignee, foreign_key: :assignee_id, class_name: "User"
  has_rich_text :description
  has_many :comments, as: :commentable
  
  #belongs_to :daily_status

  has_many :pins
  has_many :labels, through: :pins, dependent: :destroy

  enum :label, { Bug: 0, Feature: 1 }
end
