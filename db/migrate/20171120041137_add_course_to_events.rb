class AddCourseToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :course, foreign_key: true
  end
end
