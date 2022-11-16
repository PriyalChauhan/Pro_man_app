class Project < ApplicationRecord
  validates :name, :description, presence: true#, length: { minimum: 2 }

  has_many :labels, as: :labeled_on
  has_many_attached :documents 
  has_rich_text :description
  has_and_belongs_to_many :users
  has_many :tasks
  has_many :comments, as: :commentable
 
end
