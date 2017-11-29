# == Schema Information
#
# Table name: recurring_events
#
#  id         :integer          not null, primary key
#  title      :string
#  anchor     :date
#  frequency  :integer          default("weekly")
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'rails_helper'

RSpec.describe RecurringEvent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
