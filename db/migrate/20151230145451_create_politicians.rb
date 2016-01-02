class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table(:politicians, id: :uuid) do |t|
      t.string :name
      t.uuid   :party_id, index: true
      t.string :image
      t.string :office_number
      t.uuid   :district_id
      t.uuid   :city_id

      t.timestamps
    end
  end
end
