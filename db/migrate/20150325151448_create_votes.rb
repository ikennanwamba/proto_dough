class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.references :collaborator
    	t.references :project
    	t.integer :originality
    	t.integer :impact
    	t.integer :measurability
    	t.integer :practicality
    	t.integer :applicability
    	t.text :comment
      	t.timestamps null: false
    end
    add_index :votes, ["collaborator_id", "project_id"]
  end
end
