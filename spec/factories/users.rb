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

FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    role { 1 }
    username { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end
end
