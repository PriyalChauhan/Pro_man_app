class CreatePins < ActiveRecord::Migration[7.0]
  def change
    create_table :pins do |t|
      t.belongs_to :project, null: true, foreign_key: true
      t.belongs_to :task, null: true, foreign_key: true
      t.belongs_to :label, null: false, foreign_key: true

      t.timestamps
    end
  end
end
