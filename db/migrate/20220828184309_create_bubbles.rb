class CreateBubbles < ActiveRecord::Migration[5.0]
  def change
    create_table :bubbles do |t|

      t.timestamps
    end
  end
end
