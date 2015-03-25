class Project < ActiveRecord::Base

	has_many :votes
	has_many :collaborators, :through => :votes


end
