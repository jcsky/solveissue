class CreateParties < ActiveRecord::Migration
  def change
    create_table(:parties, id: :uuid) do |t|
      t.string :name
      t.string :logo
      t.string :abbreviation
      t.timestamps
    end
  end
end
