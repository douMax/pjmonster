class Invoice < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :payment_bath, optional: true
  belongs_to :project, optional: true

  has_and_belongs_to_many :vendro

end
