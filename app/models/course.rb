# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  title      :string
#  prof       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer
#

class Course < ApplicationRecord
	has_many :events, dependent: :destroy
	searchkick word_start: [:title, :prof]

 def search_data
    {
      title: title,
      prof: prof
    }
  end
end
