class CreatePoliticianVotes < ActiveRecord::Migration
  def change
    create_table(:politician_votes, id: :uuid) do |t|
      t.text :up_voted_user_ids
      t.text :down_voted_user_ids
      t.uuid :voteable_id, index: true
      t.uuid :voteable_type, index: true
      t.date :date

      t.timestamps
    end
  end
end
