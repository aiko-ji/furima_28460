FactoryBot.define do
  factory :product do
   association :user
   name         {"商品名"}
   category_id  {1}
   condition_id {1}
   price        {300}
   description  {"解説"}
   shipping_id  {1}
   delivery_id  {1}
   day_id       {1}
  end
end