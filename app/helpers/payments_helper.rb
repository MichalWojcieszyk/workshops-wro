module PaymentsHelper
	def sum_to_euro(sum)
		number_to_currency(sum, :unit=>'€')
	end
end
