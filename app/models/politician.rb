# == Schema Information
#
# Table name: politicians
#
#  id            :uuid             not null, primary key
#  party_id      :uuid
#  district_id   :uuid
#  city_id       :uuid
#  name          :string
#  image         :string
#  url           :string
#  email         :string
#  office_number :string
#  reputation    :integer
#  election_id   :uuid
#  gov_job_id    :uuid
#  owner_id      :uuid
#  created_at    :datetime
#  updated_at    :datetime
#

class Politician < ActiveRecord::Base
end
