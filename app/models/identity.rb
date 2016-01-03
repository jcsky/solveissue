# == Schema Information
#
# Table name: identities
#
#  id         :uuid             not null, primary key
#  uid        :string
#  provider   :string
#  token      :string
#  user_id    :uuid
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Identity < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider)
  end
end
