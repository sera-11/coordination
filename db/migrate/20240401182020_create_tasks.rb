class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :text
      t.date :due_date
      t.integer :assigned_to_id
      t.string :status
      t.integer :organization_id

      t.timestamps
    end
  end
end
