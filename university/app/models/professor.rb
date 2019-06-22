class Professor < ApplicationRecord
	has_many :subjects

	validates :name, :presence => true
	validates :file_number, :presence => true,
													:length => { :minimum => 4}
end
