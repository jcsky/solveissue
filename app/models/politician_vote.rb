# == Schema Information
#
# Table name: politician_votes
#
#  id                  :uuid             not null, primary key
#  up_voted_user_ids   :text
#  down_voted_user_ids :text
#  voteable_id         :uuid
#  voteable_type       :uuid
#  date                :date
#  created_at          :datetime
#  updated_at          :datetime
#

class PoliticianVote < ActiveRecord::Base
end
