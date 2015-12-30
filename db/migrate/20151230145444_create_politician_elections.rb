class CreatePoliticianElections < ActiveRecord::Migration
  def change
    create_table(:politician_elections, id: :uuid) do |t|
      t.string :result
      t.uuid :politician_id, index: true
      t.uuid :election_id, index: true

      t.timestamps
    end
  end
end
