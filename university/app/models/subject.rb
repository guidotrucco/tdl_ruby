class Subject < ApplicationRecord
  belongs_to :professor
  has_many :students

  def add_student(student)
  	students << student.id
  	student.subject_id = id
  end
end
