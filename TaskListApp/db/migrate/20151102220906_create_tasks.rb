class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Title
      t.text :Description
      t.integer :Priority
      t.date :Due_Date
      t.boolean :Is_Completed_Toggle
      #t.integer :task_list_id

      t.timestamps null: false
    end
    #add_index :tasks, :task_list_id
  end
end
