class Subject < ApplicationRecord
  belongs_to :professor
  has_many :students

  validates :name, :presence => true
  validates :code, :presence => true
  validates :professor, :presence => true

 def add_student(student_id)
 	student_id = student_id.to_i
  	student = Student.find(student_id)
  	students << student
  	student.subject_id = id
  	student.save
  end
end
