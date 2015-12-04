class RemoveStudentFromSubjectItems < ActiveRecord::Migration
  def change
  	remove_foreign_key :subject_items, :students
    remove_reference :subject_items, :student, index: true
  end
end
