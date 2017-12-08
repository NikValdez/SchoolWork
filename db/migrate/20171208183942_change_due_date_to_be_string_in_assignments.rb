class ChangeDueDateToBeStringInAssignments < ActiveRecord::Migration[5.0]
  def change
  	change_column :assignments, :due_date, :string
  end
end
