# == Schema Information
#
# Table name: payment_batches
#
#  id           :integer          not null, primary key
#  name         :string
#  batch_period :integer
#  start_date   :datetime
#  end_date     :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class PaymentBatch < ApplicationRecord
end
