class AddStudentToSubjectItems < ActiveRecord::Migration
  def change
  	add_reference :subject_items, :student, index: true
    add_foreign_key :subject_items, :students
  end
end
