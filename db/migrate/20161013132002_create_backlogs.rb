class CreateBacklogs < ActiveRecord::Migration
  def change
    create_table :backlogs do |t|
      t.integer :backlogger_id
      t.integer :game_id

      t.timestamps null:false
    end
  end
end
