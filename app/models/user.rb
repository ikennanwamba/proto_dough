class User < ActiveRecord::Base
	has_many :projects, :through => :projects_users
	has_many :projects_users
	has_many :votes, :through => :projects_votes
	has_many :projects_votes


end
