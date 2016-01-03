# == Schema Information
#
# Table name: profiles
#
#  id         :uuid             not null, primary key
#  gender     :integer
#  birthday   :date
#  user_id    :uuid
#  created_at :datetime
#  updated_at :datetime
#

class Profile < ActiveRecord::Base
end
