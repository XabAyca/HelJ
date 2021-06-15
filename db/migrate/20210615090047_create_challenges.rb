class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :c_type
      t.string :level
      t.string :challenge_slug
      t.string :challenge_description
      t.string :challenge_img
      t.string :challenge_link
      t.string :challenge_name
      t.timestamps
    end
  end
end
