# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Organization < ApplicationRecord
  
  ## Direct Associations
  has_many :members, dependent: :destroy
  has_many :meeting_minutes, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :tasks, dependent: :destroy
end
