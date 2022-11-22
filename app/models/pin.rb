class Pin < ApplicationRecord
  belongs_to :project, optional: true
  belongs_to :task, optional: true
  belongs_to :label
end
