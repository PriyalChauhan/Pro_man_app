class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.text :status
      t.references :daily_status, null: false, foreign_key: true
      t.timestamps
    end
  end
end
