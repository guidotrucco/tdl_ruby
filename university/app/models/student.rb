class Student < ApplicationRecord
	belongs_to :subject, optional: true

	validates :name, :presence => true
	validates :padron, :presence => true,
						:length => { :minimum => 4}
	validates :email, :presence => true, :format =>{ :with => URI::MailTo::EMAIL_REGEXP }

end
