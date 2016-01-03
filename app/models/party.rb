# == Schema Information
#
# Table name: parties
#
#  id         :uuid             not null, primary key
#  name       :string
#  logo       :string
#  created_at :datetime
#  updated_at :datetime
#

class Party < ActiveRecord::Base
end
