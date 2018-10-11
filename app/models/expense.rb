# == Schema Information
#
# Table name: expenses
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  status      :integer
#  spend_on    :datetime
#  spend_at    :string
#  amount      :decimal(18, 2)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  project_id  :integer
#

class Expense < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :project, optional: true
  belongs_to :vendor, optional: true

  

end
