class CreateJointUsersToProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :joint_users_to_projects do |t|
      t.references :project
      t.references :user

      t.timestamps
    end
  end
end
