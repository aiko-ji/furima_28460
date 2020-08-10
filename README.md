	# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| ----------------| ------ | ----------- |
| nickname        | string | null: false |
| email           | string | null: false |
| password        | string | null: false |
| first name      | string | null: false |
| last name       | string | null: false |
| birth date      | string | null: false |

### Association
- belongs_to :users
- belongs_to :product


## product テーブル

| Column          | Type   | Options     |
| ----------------| ------ | ----------- |
| product name    | string | null: false |
| category        | string | null: false |
| price           | string | null: false |
| exhibitor       | string | null: false |


## purchase テーブル

| Column              | Type   | Options     |
| ----------------    | ------ | ----------- |
| first name          | string | null: false |
| last name           | string | null: false |
| address             | string | null: false |
| method of payment   | string | null: false |



## comments テーブル

| Column          | Type       | Options                        |
| ----------------| ---------- | ------------------------------ |
| user            | references | null: false, foreign_key: true |
| product         | references | null: false, foreign_key: true |
| purchase        | references | null: false, foreign_key: true |
| product         | references | null: false, foreign_key: true |


##  messages テーブル

| Column           | Type       | Options                        |
| -----------------| ---------- | ------------------------------ |
| user             | string     | null: false                    |
| text             | references | null: false, foreign_key: true |
