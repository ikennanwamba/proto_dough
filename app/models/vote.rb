class Vote < ActiveRecord::Base
	has_one :project, :through => :projects_vote
	has_one :user, :through => :projects_vote
	has_one :projects_vote
	
end
