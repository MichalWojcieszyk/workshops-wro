class Payment < ActiveRecord::Base
	belongs_to :student

	validates :sum, :date, :student, :month_fee, presence: true
	validates :sum, numericality: { greater_than: 0}
end
