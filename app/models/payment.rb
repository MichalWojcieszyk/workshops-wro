class Payment < ActiveRecord::Base
	belongs_to :student

	validates :sum, :date, :student_id presence: true
end
