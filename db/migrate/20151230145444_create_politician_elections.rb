class CreatePoliticianElections < ActiveRecord::Migration
  def change
    create_table(:politician_elections, id: :uuid) do |t|
      # 參選結果
      t.integer :result
      t.uuid :politician_id, index: true
      t.uuid :election_id, index: true
      t.timestamps
    end
  end
end
