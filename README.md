# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| nickname         | string  | null: false |
| email            | string  | primary_key |
| password         | string  | null: false |
| family_name      | string  | null: false |
| first_name       | string  | null: false |
| family_name_kana | string  | null: false |
| first_name_kana  | string  | null: false |
| birthday         | date    | null: false |

### Association

- has_many :items
- has_many :orders



## items テーブル

| Column          | Type    | Options                        |
| --------------- | ------- | ------------------------------ |
| name            | string  | null: false                    |
| image           | string  | null: false                    |
| explanation     | text    | null: false                    |
| price           | integer | null: false                    |
| category_id     | integer | null: false                    |
| status_id       | integer | null: false                    |
| postage_id      | integer | null: false                    |
| user_id         | integer | null: false, foreign_key: true |
| prefecture_id   | integer | null: false                    |
| shipping_day_id | integer | null: false                    |

### Association

- belongs_to :user
- has_one :order



## orders テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user_id | integer | null: false, foreign_key: true |
| item_id | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :delivery


## deliverys テーブル

| Column       | Type    | Options                        |
| ------------ | ------- | ------------------------------ |
| orders_id    | integer | null: false, foreign_key: true |
| postal_code  | string  | null: false                    |
| prefectures  | integer | null: false                    |
| city         | integer | null: false                    |
| house_number | string  | null: false                    |
| build_number | string  | null: false                    |
| phone_number | string  | null: false                    |


### Association

- has_one :order

