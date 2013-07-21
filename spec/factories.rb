FactoryGirl.define do
  factory :user do
    name     "Sasha"
    email    "alex@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
