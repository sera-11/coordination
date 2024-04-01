# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  address         :string
#  city            :string
#  description     :text
#  end_time        :datetime
#  hosting         :boolean
#  location        :string
#  start_time      :datetime
#  state           :string
#  title           :string
#  zipcode         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :integer
#
class Event < ApplicationRecord
end
