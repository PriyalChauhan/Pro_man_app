class CreateLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :labels do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.references :labeled_on, polymorphic: true, null: false
      t.string :label

      t.timestamps
    end
  end
end
