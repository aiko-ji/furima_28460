FactoryBot.define do
  factory :product do
   name                    {"商品名"}
   category_id             {"カテゴリー"}
   commodity_condition_id  {"商品状態"}
   price                   {"価格"}
   exhibitor               {"出品者"}
   description             {"解説"}
   user_id                 {id}
   shipping_charges_id     {"配達料"}
   area_of_delivery_id     {"配達地域"}
   days_until_delivery_id  {"日数"}
  end
end