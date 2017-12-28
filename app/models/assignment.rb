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

class Assignment < ApplicationRecord
	validates :name, presence: true
	validates :due_date, presence: true
	validates :description, presence: true
	belongs_to :course
	has_many :notes, dependent: :destroy
end
