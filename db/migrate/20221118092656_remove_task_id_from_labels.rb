class RemoveTaskIdFromLabels < ActiveRecord::Migration[7.0]
  def change
    drop_table :labels
  end
end
