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
