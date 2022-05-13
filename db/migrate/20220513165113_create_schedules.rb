class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.datetime :scheduleStart
      t.datetime :scheduleEnd
      t.references :shift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
