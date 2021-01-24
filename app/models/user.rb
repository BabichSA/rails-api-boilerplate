# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string(255)      not null
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)      not null
#  role            :integer          default("user"), not null
#  username        :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#

class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP }

  before_save :default_values

  enum role: { user: 0, admin: 1, superadmin: 100 }

  private

  def default_values
    self.role ||= :user
  end
end
