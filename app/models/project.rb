class Project < ApplicationRecord
  has_rich_text :description
  has_and_belongs_to_many :users
  has_many :tasks
  has_many :comments, as: :commentable
end
