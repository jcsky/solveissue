# == Schema Information
#
# Table name: politician_elections
#
#  id            :uuid             not null, primary key
#  result        :integer
#  politician_id :uuid
#  election_id   :uuid
#  created_at    :datetime
#  updated_at    :datetime
#

class PoliticianElection < ActiveRecord::Base
end
