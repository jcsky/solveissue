# == Schema Information
#
# Table name: elections
#
#  id         :uuid             not null, primary key
#  name       :string
#  vote_date  :date
#  created_at :datetime
#  updated_at :datetime
#

class Election < ActiveRecord::Base
end
