class User < ActiveRecord::Base
	has_many :events
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	
	def name
		[first_name, last_name].join(' ')
	end

end
