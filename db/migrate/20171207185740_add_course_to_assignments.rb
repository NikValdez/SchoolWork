class AddCourseToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_reference :assignments, :course, foreign_key: true
  end
end
