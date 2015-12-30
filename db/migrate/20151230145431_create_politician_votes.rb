class CreatePoliticianVotes < ActiveRecord::Migration
  def change
    create_table(:politician_votes, id: :uuid) do |t|
      t.integer :reputation
      t.text :up_voted_user_ids
      t.text :down_voted_user_ids
      t.uuid :politician_id, index: true

      t.timestamps
    end
  end
end
