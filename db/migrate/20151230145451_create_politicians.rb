class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table(:politicians, id: :uuid) do |t|
      t.string :name
      t.uuid :party_id, index: true

      t.timestamps
    end
  end
end
