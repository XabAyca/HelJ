class CreateJointUsersToPpations < ActiveRecord::Migration[6.1]
  def change
    create_table :joint_users_to_ppations do |t|
      t.references :user
      t.references :participation_challenge
      t.timestamps
    end
  end
end
