class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.text :description
      t.date :due_date
      t.boolean :completed
    end
  end
end
