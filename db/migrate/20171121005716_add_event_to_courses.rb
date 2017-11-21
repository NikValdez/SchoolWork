class AddEventToCourses < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :event, foreign_key: true
  end
end
