class Vote < ActiveRecord::Base

	belongs_to :collaborator
	belongs_to :project
	
end
