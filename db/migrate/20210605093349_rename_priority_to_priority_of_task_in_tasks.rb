class RenamePriorityToPriorityOfTaskInTasks < ActiveRecord::Migration
  def change
    rename_column :tasks, :priority, :priority_of_task
  end
end
