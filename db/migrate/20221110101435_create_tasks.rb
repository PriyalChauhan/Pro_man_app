class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :status
      t.references :project, null: false, foreign_key: true
      t.references :reporter, references: :users, foreign_key: { to_table: :users }
      t.references :assignee, references: :users, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
