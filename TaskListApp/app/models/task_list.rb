class TaskList < ActiveRecord::Base
	has_many :tasks

	def name
		"#{Name.capitalize}"
	end
end
