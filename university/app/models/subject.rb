class Subject < ApplicationRecord
  belongs_to :professor
  has_many :students

  validates :name, :presence => true
  validates :code, :presence => true
  validates :professor, :presence => true

 def add_student(student)
  	students << student.id
  	student.subject_id = id
  end
end
