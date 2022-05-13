class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.datetime :shiftStart
      t.datetime :shiftEnd
      t.references :unavailability, null: false, foreign_key: true

      t.timestamps
    end
  end
end
