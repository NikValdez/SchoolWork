class RemoveEventIdFromCourses < ActiveRecord::Migration[5.0]
  def change
    remove_column :courses, :event_id, :integer
  end
end
