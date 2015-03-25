class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string "name"
    	t.string "tag_line"
    	t.string "benefactor"
    	t.string "benefactor_need"
    	t.string "benefactor_pain"
    	t.string "benefactor_gain"
    	t.string "competitor"
    	t.boolean "assist_request"
      t.timestamps null: false
    end
  end
end
