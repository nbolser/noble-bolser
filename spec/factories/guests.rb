# frozen_string_literal: true
FactoryBot.define do
  factory :guest do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    attending { true }
    comments { 'MyText' }
    address { Faker::Address.street_name }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip { Faker::Address.zip }
  end
end
