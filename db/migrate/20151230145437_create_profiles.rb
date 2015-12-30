class CreateProfiles < ActiveRecord::Migration
  def change
    create_table(:profiles, id: :uuid) do |t|
      t.integer :gender
      t.date :birthday
      t.string :name
      t.uuid :user_id, index: true

      t.timestamps
    end
  end
end
