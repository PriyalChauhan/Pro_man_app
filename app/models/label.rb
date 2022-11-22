class Label < ApplicationRecord
  has_many :pins
  has_many :tasks, through: :pins, dependent: :destroy
  has_many :projects, through: :pins, dependent: :destroy
  validates :label, uniqueness: true
end
