class AddStudentToPayment < ActiveRecord::Migration
  def change
  	add_reference :payments, :student, index: true
  	add_foreign_key :payments, :students
  end
end
