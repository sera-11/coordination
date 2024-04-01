# == Schema Information
#
# Table name: members
#
#  id              :integer          not null, primary key
#  birthdate       :date
#  email           :string
#  first_name      :string
#  last_name       :string
#  phone_number    :string
#  role            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#  user_id         :integer
#
class Member < ApplicationRecord
  ## Direct Associations
  has_many :tasks, foreign_key: "assigned_to_id", dependent: :destroy
  belongs_to :user, optional: true
  belongs_to :organization
end
