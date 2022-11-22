class AddLabelToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :label, :integer
  end
end
