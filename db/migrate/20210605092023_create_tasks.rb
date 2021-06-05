class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.date :task_date

      t.timestamps null: false
    end
  end
end
