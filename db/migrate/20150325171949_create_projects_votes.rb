class CreateProjectsVotes < ActiveRecord::Migration
  def change
    create_table :projects_votes do |t|
			t.belongs_to :project
			t.belongs_to :vote
			t.belongs_to :user

      t.timestamps null: false
    end
  end
end
