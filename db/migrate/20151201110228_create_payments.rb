class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :sum
      t.date :date

      t.timestamps null: false
    end
  end
end
