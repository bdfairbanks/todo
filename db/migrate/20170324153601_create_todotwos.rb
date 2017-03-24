class CreateTodotwos < ActiveRecord::Migration
  def change
    create_table :todotwos do |t|
      t.string :task
      t.string :whendue

      t.timestamps null: false
    end
  end
end
