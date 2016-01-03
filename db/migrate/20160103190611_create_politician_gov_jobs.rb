class CreatePoliticianGovJobs < ActiveRecord::Migration
  def change
    create_table(:politician_gov_jobs, id: :uuid) do |t|
      t.uuid  :politician_id
      t.uuid  :gov_job_id

      # 當時代表哪一黨任職
      t.uuid  :party_id

      # 區域立委需註明縣市
      t.uuid  :city_id

      # 第幾屆
      t.integer :th

      # 任期起迄
      t.date  :start_date
      t.date  :end_date
      t.timestamps null: false
    end
  end
end
