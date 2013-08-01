FactoryGirl.define do
  sequence :email do |n|
    "name #{n}"
  end

  sequence :token do |n|
    "token_#{n}"
  end

  factory :mentor do
    name "MyString"
    occupation "MyString"
    email "MyString"
    twitter "MyString"
    linkedin "MyString"
    why "MyString"
  end

  factory :entrepreneur_application do
    name 'Marriel'
    age '19'
    city 'Nairobi'
    number '849283'
    email 'marriel@example.com'
    employed 'no'
    internet 'yes'
    phone_type 'Nokia 2323'
    picture 'yes'
    availability 'yes'
    passion 'Making beautiful jewelry'
    business_idea 'Curio shop in Nairobi'
    sustainable 'Already sell to many people'
    why 'To pay for siblings to attend school'
    impact 'I could become a lawyer'
  end

  factory :donation do
    token
    email

    amount 5
  end

  factory :guest_donation do
  end
end
