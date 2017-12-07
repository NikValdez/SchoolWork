class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :description
      t.string :type
      t.date :due_date

      t.timestamps
    end
  end
end
