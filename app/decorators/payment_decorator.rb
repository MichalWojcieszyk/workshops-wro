class PaymentDecorator < Draper::Decorator
  def formatted_tuition
  	object.month_fee == nil ? '' : object.month_fee.strftime('%B %Y')
  end
end
