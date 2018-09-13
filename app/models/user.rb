# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string
#  last_name       :string
#  email           :string
#  password_digest :string
#  user_group_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, length: {minimum: 5}
  validates :first_name, presence: true

  belongs_to :user_group, optional: true
  has_and_belongs_to_many :projects

end
