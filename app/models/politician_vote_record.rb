# == Schema Information
#
# Table name: politician_vote_records
#
#  id            :uuid             not null, primary key
#  user_id       :integer
#  politician_id :uuid
#  value         :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class PoliticianVoteRecord < ActiveRecord::Base
end
