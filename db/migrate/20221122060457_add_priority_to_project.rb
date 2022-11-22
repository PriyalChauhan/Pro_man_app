class AddPriorityToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :priority, :integer
  end
end
