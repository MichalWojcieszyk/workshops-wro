class PaymentDecorator < Draper::Decorator
  def formatted_tuition
  	object.month_fee == nil ? '' : object.month_fee.strftime('%B %Y')
  end

  def sum_to_euro
		h.number_to_currency(object.sum, :unit=>'€')
	end 
end
