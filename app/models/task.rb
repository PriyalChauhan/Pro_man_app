class Task < ApplicationRecord
  validates :title, :status, presence: true

  has_many_attached :documents
  belongs_to :project
  belongs_to :reporter, foreign_key: :reporter_id, class_name: "User"
  belongs_to :assignee, foreign_key: :assignee_id, class_name: "User"
  has_rich_text :description
  has_many :comments, as: :commentable
  has_many :labels, as: :labeled_on
end
