class CreateJointUserRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :joint_user_rooms do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
