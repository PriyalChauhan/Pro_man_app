class DropProjectsUserTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :projects_users
  end
end
