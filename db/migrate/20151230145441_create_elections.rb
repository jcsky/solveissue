class CreateElections < ActiveRecord::Migration
  def change
    create_table(:elections, id: :uuid) do |t|
      # 2016總統選舉、2016立委選舉
      t.string :name
      t.date   :vote_date
      t.timestamps
    end
  end
end
