class CreateUnavailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :unavailabilities do |t|
      t.datetime :unavailabilityStart
      t.datetime :unavailability

      t.timestamps
    end
  end
end
