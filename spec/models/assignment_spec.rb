# == Schema Information
#
# Table name: assignments
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  type        :string
#  due_date    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  course_id   :integer
#

require 'rails_helper'

RSpec.describe Assignment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
