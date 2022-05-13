class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :userName
      t.string :userEmail
      t.string :userPassword
      t.string :userRole

      t.timestamps
    end
  end
end
