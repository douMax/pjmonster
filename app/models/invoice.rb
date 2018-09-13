# == Schema Information
#
# Table name: invoices
#
#  id               :integer          not null, primary key
#  name             :string
#  invoice_number   :string
#  description      :text
#  status           :integer
#  invoice_date     :datetime
#  due_date         :datetime
#  is_a_claim       :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  project_id       :integer
#  vendor_id        :integer
#  payment_batch_id :integer
#

class Invoice < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :payment_bath, optional: true
  belongs_to :project, optional: true
  belongs_to :vendor, optional: true

  enum :status => {"due":1, "overdue":2, "paid":3}
  
  def vendor_name
    self.vendor.name if self.vendor
  end

end
