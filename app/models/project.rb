# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  status      :integer
#  start_date  :datetime
#  end_date    :datetime
#  location    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ApplicationRecord
  has_many :invoices
  has_many :payment_batches

  has_and_belongs_to_many :vendors, through: :invoices
  has_and_belongs_to_many :users

end
