class CreateIdentities < ActiveRecord::Migration
  def change
    create_table(:identities, id: :uuid) do |t|
      t.string :uid
      t.string :provider
      t.string :token
      t.uuid :user_id
      t.timestamps null: false
    end
    add_index :identities, :user_id
  end
end
