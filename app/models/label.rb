class Label < ApplicationRecord
  validates :label, presence: true, uniqueness: true

  belongs_to :user
  belongs_to :labeled_on, polymorphic: true
end
