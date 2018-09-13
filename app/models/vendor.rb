# == Schema Information
#
# Table name: vendors
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  email       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Vendor < ApplicationRecord
  has_many :invoices

  has_and_belongs_to_many :projects, through: :invoices


end
