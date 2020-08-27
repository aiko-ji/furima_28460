FactoryBot.define do
  factory :product do
   name         {"商品名"}
   category_id  {0}
   condition_id {0}
   price        {300}
   exhibitor    {"出品者"}
   description  {"解説"}
   user_id      {0}
   shipping_id  {0}
   delivery_id  {0}
   days_id      {0}

  end
end