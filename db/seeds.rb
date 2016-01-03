# All is Todo
puts '產生gov_jobs'
  require 'csv'
  arrs = CSV.read("config/gov_job.csv")
  arrs[1..arrs.length].each do |row|
    GovJob.find_or_create_by(name: row[1].to_s, department: row[0].to_s)
  end

puts '產生政黨資料'
  arrs = CSV.read("config/party.csv")
  arrs[1..arrs.length].each do |row|
    Party.find_or_create_by(name: row[0].to_s, abbreviation: row[1].to_s, logo: row[2].to_s)
  end

puts '產生選舉資料'
  Election.find_or_create_by(:name => "2016 總統選舉", :vote_date => "2016/1/16")
  Election.find_or_create_by(:name => "2016 立委選舉", :vote_date => "2016/1/16")

puts '產生民代資料'
  arrs = CSV.read("config/legislator_ad8.csv")
  arrs[1..arrs.length].each do |row|
    party = row[8]
    gender = 0 if row[7] = "男"
    Politician.find_or_create_by(name: row[5].to_s, image: row[12].to_s)
  end
