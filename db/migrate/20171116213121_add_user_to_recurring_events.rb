class AddUserToRecurringEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :recurring_events, :user, foreign_key: true
  end
end
