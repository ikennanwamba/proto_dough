class CreateCollaborators < ActiveRecord::Migration
  def change
    create_table :collaborators do |t|
    	t.string "test_name"
      t.timestamps null: false
    end
  end
end
