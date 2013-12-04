class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_type
      t.string :user_id
      t.string :team_id
      t.integer :section

      t.timestamps
    end
  end
end
