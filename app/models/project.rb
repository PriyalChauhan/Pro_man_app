class Project < ApplicationRecord
  validates :name, :description, presence: true#, length: { minimum: 2 }


  has_many :teams, dependent: :destroy
  has_many :users, through: :teams

  has_many_attached :documents 
  has_rich_text :description
  has_many :tasks
  has_many :comments, as: :commentable
  # belongs_to :reporter, foreign_key: :reporter_id, class_name: "User"
  # belongs_to :assignee, foreign_key: :assignee_id, class_name: "User"
  
  has_many :pins
  has_many :labels ,through: :pins, dependent: :destroy
  
  enum priority: { Highest: 0, High: 1, Medium: 2, Low: 3, Lowest: 4 }
end
