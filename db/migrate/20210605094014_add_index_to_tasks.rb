class AddIndexToTasks < ActiveRecord::Migration
  def change
    add_index :tasks, :task_name
  end
end
