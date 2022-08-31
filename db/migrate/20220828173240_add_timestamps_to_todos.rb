class AddTimestampsToTodos < ActiveRecord::Migration[5.0]
  def change
    # table_name,column_name,data-type of column
    add_column :todos, :created_at, :datetime
    add_column :todos, :updated_at, :datetime

  end
end
