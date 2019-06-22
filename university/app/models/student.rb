class Student < ApplicationRecord
	belongs_to :subject, optional: true
end
