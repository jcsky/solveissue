# == Schema Information
#
# Table name: districts
#
#  id         :uuid             not null, primary key
#  name       :string
#  city_id    :uuid
#  created_at :datetime
#  updated_at :datetime
#

class District < ActiveRecord::Base
end
