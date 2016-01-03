# == Schema Information
#
# Table name: gov_jobs
#
#  id         :uuid             not null, primary key
#  department :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GovJob < ActiveRecord::Base
end
