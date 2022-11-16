class CreateDailyStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_statuses do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :email
      t.date :status_date
      t.string :project
      t.time :working_hours
      t.string :status
      t.string :task

      t.timestamps
    end
  end
end
