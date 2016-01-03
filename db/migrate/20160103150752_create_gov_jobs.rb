class CreateGovJobs < ActiveRecord::Migration
  def change
    create_table(:gov_jobs, id: :uuid) do |t|
      # 立法院/總統府/台南市/宜蘭縣/宜蘭縣議會
      t.string   :department
      # 區域立委、不分區立委、原住民立委/總統/市長/縣長/議員
      t.string   :name
      t.timestamps null: false
    end
  end
end
