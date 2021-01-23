# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  password_digest :string(255)
#  role            :integer
#  username        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
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
