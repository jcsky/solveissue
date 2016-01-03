# == Schema Information
#
# Table name: cities
#
#  id         :uuid             not null, primary key
#  name       :string
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base
end
