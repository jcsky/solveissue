class CreateElections < ActiveRecord::Migration
  def change
    create_table(:elections, id: :uuid) do |t|
      t.string :name

      t.timestamps
    end
  end
end
