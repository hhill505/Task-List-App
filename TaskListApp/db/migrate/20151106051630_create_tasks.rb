class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priorit
      t.date :duedate
      t.boolean :iscompleted
      t.references :tasklist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
