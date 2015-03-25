class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
    	t.integer :originality
    	t.integer :impact
    	t.integer :measurability
    	t.integer :practicality
    	t.integer :applicability
    	t.text :comment
			t.references :user
			t.references :project

      t.timestamps null: false
    end
  end
end
