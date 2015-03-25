class Collaborator < ActiveRecord::Base

	has_many :votes
	has_many :projects, :through => :votes

end
