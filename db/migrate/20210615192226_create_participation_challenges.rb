class CreateParticipationChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :participation_challenges do |t|
      t.references :challenges
      t.timestamps
    end
  end
end
