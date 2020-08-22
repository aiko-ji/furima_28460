FactoryBot.define do
  factory :product do
   name                    {"商品名"}
   category_id             {0}
   commodity_condition_id  {0}
   price                   {300}
   exhibitor               {"出品者"}
   description             {"解説"}
   user_id                 {0}
   shipping_charges_id     {0}
   area_of_delivery_id     {0}
   days_until_delivery_id  {0}

  end
end