class AddFeeMonthToPayments < ActiveRecord::Migration
  def change
  	add_column :payments, :month_fee, :datetime
  end
end
