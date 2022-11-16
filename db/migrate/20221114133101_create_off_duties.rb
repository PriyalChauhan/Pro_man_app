class CreateOffDuties < ActiveRecord::Migration[7.0]
  def change
    create_table :off_duties do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :from_date
      t.datetime :to_date
      t.integer :days
      t.string :mail_to
      t.text :reason

      t.timestamps
    end
  end
end
