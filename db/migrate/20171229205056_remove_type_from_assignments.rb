class RemoveTypeFromAssignments < ActiveRecord::Migration[5.0]
  def change
    remove_column :assignments, :type, :string
  end
end
