	# テーブル設計

## users テーブル

| Column               | Type   | Options                        |
| -------------------- | ------ | ------------------------------ |
| nickname             | string | null: false, foreign_key: true |
| email                | string | null: false, foreign_key: true |
| password             | string | null: false, foreign_key: true |
| first_name           | string | null: false, foreign_key: true |
| last_name            | string | null: false, foreign_key: true |
| birthday             | date   | null: false, foreign_key: true |
| phonetic_first_name  | string | null: false, foreign_key: true |
| phonetic_last_name   | string | null: false, foreign_key: true | 

### Association
- has_many : purchase
- has_one :product


## product テーブル

| Column                    | Type        | Options                           |
| ------------------------- | ----------- | --------------------------------- |
| name                      | string      | null: false                       |
| category_id               | integer     | null: false                       |
| commodity_condition_id    | integer     | null: false                       |
| price                     | integer     | null: false                       |
| exhibitor                 | string      | null: false                       |
| description               | text        | null: false                       |
| user_id                   | integer     | null: false, foreign_key: true    |
| shipping_charges_id       | integer     | null: false                       |
| area_of_delivery_id       | integer     | null: false                       |
| days_until_delivery_id    | integer     | null: false                       |

### Association
- belongs_to :purchase


## purchase テーブル

| Column              | Type    | Options                        |
| ------------------- | --------| ------------------------------ |
| user_id             | integer | null: false, foreign_key: true |
| product_id          | integer | null: false, foreign_key: true | 


### Association
- belongs_to :product
- belongs_to :users

## user_address テーブル

| Column              | Type     | Options                        |
| ------------------- | -------- | ------------------------------ |
| postal code         | string   | null: false                    |
| municipalities      | string   | null: false                    |
| building_number     | string   |                                |
| prefecture          | string   | null: false                    |
| user_id             | integer  | null: false, foreign_key: true |
| product_id          | integer  | null: false, foreign_key: true | 
| purchase_id         | integer  | null: false, foreign_key: true |

### Association

- belongs_to :purchase

## comments テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| product         | references | null: false, foreign_key: true |
| purchase        | references | null: false, foreign_key: true |



##  messages テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| text             | references | null: false, foreign_key: true |
