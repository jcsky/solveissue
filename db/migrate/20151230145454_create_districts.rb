class CreateDistricts < ActiveRecord::Migration
  def change
    create_table(:districts, id: :uuid) do |t|
      t.string :name
      t.uuid :city_id, index: true

      t.timestamps
    end
  end
end
