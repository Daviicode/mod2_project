class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_password
      t.integer :user_event_id
      t.string :first_name
      t.string :last_name
      t.string :from
      t.string :duration


      t.timestamps
    end
  end
end
