class CreatePoliticianVoteRecords < ActiveRecord::Migration
  def change
    create_table(:politician_vote_records, id: :uuid) do |t|
      t.integer :user_id, index: true
      t.uuid :politician_id, index: true
      t.integer :value

      t.timestamps
    end
  end
end
