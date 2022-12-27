FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
    phone { 1 }
    address { "MyString" }
  end
end
