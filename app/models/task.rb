# == Schema Information
#
# Table name: tasks
#
#  id              :integer          not null, primary key
#  due_date        :date
#  status          :string
#  text            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  assigned_to_id  :integer
#  organization_id :integer
#
class Task < ApplicationRecord

  ## Direct Associations
  belongs_to :member, foreign_key: "assigned_to_id"
  belongs_to :organization
end
