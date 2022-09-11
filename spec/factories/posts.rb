# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :post do |f|
    f.account_id { [FactoryBot.create(:account)].pluck('id').join }
    f.community_id { [FactoryBot.create(:community)].pluck('id').join }

    f.title { Faker::Book.title }
    f.body { Faker::Quote.famous_last_words }
    f.upvotes { Faker::Number.within(range: 0..100_0) }
    f.downvotes { Faker::Number.within(range: 0..100_0) }
  end
end
