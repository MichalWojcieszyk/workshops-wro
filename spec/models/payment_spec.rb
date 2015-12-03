require 'rails_helper'

RSpec.describe Payment do
	describe 'validations' do
		it { is_expected.to validate_presence_of :sum }
		it { is_expected.to validate_presence_of :date }
		it { is_expected.to validate_presence_of :student }

		context 'payment with negative sum' do
			let(:student) { create :student }
			subject { build :payment, student: student, sum: -100, date: Date.today }

			it { is_expected.to_not be_valid }
		end
	end

	describe 'database columns' do
		it { should have_db_column :sum }
		it { should have_db_column :date }
		it { should have_db_column :student_id }
	end

	describe 'associations' do
		it { is_expected.to belong_to :student }
	end
end
