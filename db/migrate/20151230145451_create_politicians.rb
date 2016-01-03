class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table(:politicians, id: :uuid) do |t|
      t.uuid   :party_id, index: true

      # 戶籍(選區)
      t.uuid   :district_id
      t.uuid   :city_id

      t.string  :name
      t.integer :gender
      t.date    :birthday

      # 頭像
      t.string :image

      # 網站、粉絲頁、...
      t.string :url
      t.string :email

      # 官方電話
      t.string :office_number

      # 目前名聲
      t.integer :reputation

      # 目前參加的選舉，無則nil
      t.uuid   :election_id

      t.uuid   :gov_job_id

      # 擁有者、必須是本人
      t.uuid   :owner_id
      t.timestamps
    end
  end
end
