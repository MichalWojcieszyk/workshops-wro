class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
  	notes = subject_item_notes.where(subject_item: subject_item)

    average_notes = notes.average(:value)

    average_notes == nil ? "0.00" : sprintf("%.2f", average_notes)
  end

  def formatted_birthdate
  	birthdate == nil ? '' : birthdate.strftime('%Y-%m_%d')
  end
end
