class Task < ActiveRecord::Base
	has_one :task_list
end
