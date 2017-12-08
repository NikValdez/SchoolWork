class Assignment < ApplicationRecord
	validates :name, presence: true
	validates :due_date, presence: true
	validates :description, presence: true
	belongs_to :course
end
