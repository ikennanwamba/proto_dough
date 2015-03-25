class ProjectsVote < ActiveRecord::Base
	belongs_to :project
	belongs_to :vote
	belongs_to :user

end
