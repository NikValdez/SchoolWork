# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string
#  start      :datetime
#  end        :datetime
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  course_id  :integer
#

class Event < ApplicationRecord
  validates :title, presence: true
  attr_accessor :date_range
  # belongs_to :course
  belongs_to :user

 

  def all_day_event?
    self.start == self.start.midnight && self.end == self.end.midnight ? true : false
  end
end
